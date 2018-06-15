//
//  UILabel+Addition.h
//  MMUIKitLib
//
//  Created by Loren on 2018/6/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Addition)
/**
 默认text为空 黑色字体 左居中 多行 15号字体
 
 @param font font
 @return label
 */
- (instancetype)initWithText:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines font:(UIFont *)font;

+ (instancetype)mm_labelWithFont:(UIFont *)font ;

+ (instancetype)mm_labelWithText:(NSString *)text;

+ (instancetype)mm_labelWithText:(NSString *)text textColor:(UIColor *)color;

+ (instancetype)mm_labelWithText:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines font:(UIFont *)font;
@end

NS_ASSUME_NONNULL_END
