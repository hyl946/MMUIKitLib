//
//  UILabel+Addition.m
//  MMUIKitLib
//
//  Created by Loren on 2018/6/14.
//

#import "UILabel+Addition.h"
#import "MMUIKitConfig.h"

@implementation UILabel (Addition)
- (instancetype)initWithText:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines font:(UIFont *)font{
    if (self = [super init]) {
        self.text = text;
        self.textAlignment = textAlignment;
        self.textColor = textColor;
        self.numberOfLines = numberOfLines;
        self.font = font;
    }
    return self;
}

+ (instancetype)mm_labelWithText:(NSString *)text{
    return [[self alloc] initWithText:text textColor:[UIColor blackColor] textAlignment:NSTextAlignmentLeft numberOfLines:0 font:mm_font_system_15];
}

+ (instancetype)mm_labelWithText:(NSString *)text textColor:(UIColor *)color{
    return [[self alloc] initWithText:text textColor:color textAlignment:NSTextAlignmentLeft numberOfLines:0 font:mm_font_system_15];
}

+ (instancetype)mm_labelWithFont:(UIFont *)font{
    return [[self alloc] initWithText:@"" textColor:[UIColor blackColor] textAlignment:NSTextAlignmentLeft numberOfLines:0 font:font];
}

+ (instancetype)mm_labelWithText:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines font:(UIFont *)font{
    return [[self alloc] initWithText:text textColor:textColor textAlignment:textAlignment numberOfLines:numberOfLines font:font];
}
@end
