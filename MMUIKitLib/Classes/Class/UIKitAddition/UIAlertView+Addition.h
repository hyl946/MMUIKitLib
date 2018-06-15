//
//  UIAlertView+Addition.h
//  MMUIKitLib
//
//  Created by Loren on 2018/6/15.
//

#import <UIKit/UIKit.h>

typedef void(^MMAlertOperation)(NSInteger index);

@interface UIAlertView (Addition)<UIAlertViewDelegate>

@property (nonatomic, copy) MMAlertOperation operation;

+ (void)mm_showTitle:(NSString *)title message:(NSString *)message operation:(void(^)(NSInteger index))operation cancelTitle:(NSString *)cancelTitle otherTitle:(NSString *)otherTitle,...NS_REQUIRES_NIL_TERMINATION;
@end
