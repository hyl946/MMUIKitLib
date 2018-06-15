//
//  UIAlertController+Addition.m
//  MMUIKitLib
//
//  Created by Loren on 2018/6/15.
//

#import "UIAlertController+Addition.h"
#import "MMUIKitConfig.h"
#import <objc/runtime.h>

static char MMAlertControllerOperationKey[] = "MMAlertOperationKey";

@implementation UIAlertController (Addition)

- (void)setOperation:(MMAlertControllerOperation)operation{
    objc_setAssociatedObject(self, MMAlertControllerOperationKey, operation, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (MMAlertControllerOperation)operation{
    return objc_getAssociatedObject(self, MMAlertControllerOperationKey);
}

+ (instancetype)mm_alertControllerTitle:(NSString *)title message:(NSString *)message operation:(void(^)(NSInteger index))operation cancelTitle:(NSString *)cancelTitle otherTitle:(NSString *)otherTitle,...NS_REQUIRES_NIL_TERMINATION
{
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    va_list argsList;
    va_start(argsList, otherTitle);
    for (NSString *obj = otherTitle; obj != nil; obj = va_arg(argsList, NSString*)) {
        [tempArray addObject:obj];
    }
    va_end(argsList);
    
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    alertController.operation = operation;
    
    if(!mm_kit_string_is_bank(cancelTitle)){
        UIAlertAction * action = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            mm_kit_block_safe(operation,0);
        }];
        [alertController addAction:action];
    }
    if(tempArray.count){
        for(int i = 0; i<tempArray.count ; i++){
            UIAlertAction * action = [UIAlertAction actionWithTitle:tempArray[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                mm_kit_block_safe(operation,i+1);
            }];
            [alertController addAction:action];
        }
    }
    
    return alertController;
}
@end
