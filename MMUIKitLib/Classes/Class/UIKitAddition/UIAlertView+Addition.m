//
//  UIAlertView+Addition.m
//  MMUIKitLib
//
//  Created by Loren on 2018/6/15.
//

#import "UIAlertView+Addition.h"
#import "MMUIKitConfig.h"
#import <objc/runtime.h>

static char MMAlertOperationKey[] = "MMAlertOperationKey";

@implementation UIAlertView (Addition)

- (void)setOperation:(MMAlertOperation)operation{
    objc_setAssociatedObject(self, MMAlertOperationKey, operation, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (MMAlertOperation)operation{
    return objc_getAssociatedObject(self, MMAlertOperationKey);
}

+ (void)mm_showTitle:(NSString *)title message:(NSString *)message operation:(void(^)(NSInteger index))operation cancelTitle:(NSString *)cancelTitle otherTitle:(NSString *)otherTitle,...NS_REQUIRES_NIL_TERMINATION{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:cancelTitle otherButtonTitles:otherTitle, nil];
    alert.delegate = alert;
    alert.operation = operation;
    [alert show];
}

#pragma mark - delegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    mm_kit_block_safe(alertView.operation,buttonIndex);
}
- (void)alertViewCancel:(UIAlertView *)alertView{
    mm_kit_block_safe(alertView.operation,0);
}
@end
