//
//  UIAlertController+Addition.h
//  MMUIKitLib
//
//  Created by Loren on 2018/6/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^MMAlertControllerOperation)(NSInteger index);

@interface UIAlertController (Addition)

@property (nonatomic, copy) MMAlertControllerOperation operation;

+ (instancetype)mm_alertControllerTitle:(NSString *)title message:(NSString *)message operation:(void(^)(NSInteger index))operation cancelTitle:(NSString *)cancelTitle otherTitle:(NSString *)otherTitle,...NS_REQUIRES_NIL_TERMINATION;

@end

NS_ASSUME_NONNULL_END
