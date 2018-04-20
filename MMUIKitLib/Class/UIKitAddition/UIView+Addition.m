//
//  UIView+Addition.m
//  MMUIKit
//
//  Created by Loren on 2018/4/21.
//  Copyright © 2018年 Loren. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)
/*
 @property (nonatomic, assign) CGPoint mm_origin;
 @property (nonatomic, assign) CGFloat mm_originX;
 @property (nonatomic, assign) CGFloat mm_originY;
 @property (nonatomic, assign) CGFloat mm_bottomX;
 @property (nonatomic, assign) CGFloat mm_bottomY;
 
 @property (nonatomic, assign) CGPoint mm_center;
 @property (nonatomic, assign) CGFloat mm_centerX;
 @property (nonatomic, assign) CGFloat mm_centerY;
 
 @property (nonatomic, assign) CGSize mm_size;
 @property (nonatomic, assign) CGFloat mm_sizeW;
 @property (nonatomic, assign) CGFloat mm_sizeH;

 */
//get
- (CGPoint)mm_origin{
    return self.frame.origin;
}
- (CGFloat)mm_originX{
    return self.mm_origin.x;
}
- (CGFloat)mm_originY{
    return self.mm_origin.y;
}
- (CGFloat)mm_bottomX{
    return self.mm_originX + self.mm_sizeW;
}
- (CGFloat)mm_bottomY{
    return self.mm_originY + self.mm_sizeH;
}


- (CGPoint)mm_center{
    return self.center;
}
- (CGFloat)mm_centerX{
    return self.mm_center.x;
}
- (CGFloat)mm_centerY{
    return self.mm_center.y;
}

- (CGSize)mm_size{
    return self.frame.size;
}
- (CGFloat)mm_sizeW{
    return self.mm_size.width;
}
- (CGFloat)mm_sizeH{
    return self.mm_size.height;
}

//set
- (void)setMm_origin:(CGPoint)mm_origin{
    
    CGRect rect = self.frame;
    
    self.frame = CGRectMake(mm_origin.x,
                            mm_origin.y,
                            mm_CGRectGetWidth(rect),
                            mm_CGRectGetHeight(rect));
}
- (void)setMm_originX:(CGFloat)mm_originX{
    
    CGRect rect = self.frame;
    
    self.frame = CGRectMake(mm_originX,
                            mm_CGRectGetOriginY(rect),
                            mm_CGRectGetWidth(rect),
                            mm_CGRectGetHeight(rect));
}

- (void)setMm_bottomX:(CGFloat)mm_bottomX{
    
    CGRect rect = self.frame;
    CGFloat mm_width = mm_CGRectGetWidth(rect);

    self.frame = CGRectMake(mm_bottomX - mm_width,
                            mm_CGRectGetOriginY(rect),
                            mm_CGRectGetWidth(rect),
                            mm_CGRectGetHeight(rect));
}

- (void)setMm_bottomY:(CGFloat)mm_bottomY{
    
    CGRect rect = self.frame;
    CGFloat mm_height = mm_CGRectGetHeight(rect);
    
    self.frame = CGRectMake(mm_CGRectGetOriginX(rect),
                            mm_bottomY - mm_height,
                            mm_CGRectGetWidth(rect),
                            mm_height);
}

- (void)setMm_center:(CGPoint)mm_center{
    self.center = mm_center;
}

- (void)setMm_centerX:(CGFloat)mm_centerX{
    CGPoint center = self.center;
    self.center = CGPointMake(mm_centerX, center.y);
}

- (void)setMm_centerY:(CGFloat)mm_centerY{
    CGPoint center = self.center;
    self.center = CGPointMake(center.x, mm_centerY);
}

- (void)setMm_size:(CGSize)mm_size{
    CGRect rect = self.frame;
    self.frame = CGRectMake(mm_CGRectGetOriginX(rect),
                            mm_CGRectGetOriginY(rect),
                            mm_size.width,
                            mm_size.height);
}

- (void)setMm_sizeW:(CGFloat)mm_sizeW{
    CGRect rect = self.frame;
    CGSize size = self.frame.size;
    self.frame = CGRectMake(mm_CGRectGetOriginX(rect),
                            mm_CGRectGetOriginY(rect),
                            mm_sizeW,
                            size.height);
}
- (void)setMm_sizeH:(CGFloat)mm_sizeH{
    CGRect rect = self.frame;
    CGSize size = self.frame.size;
    self.frame = CGRectMake(mm_CGRectGetOriginX(rect),
                            mm_CGRectGetOriginY(rect),
                            size.width,
                            mm_sizeH);
}
@end
