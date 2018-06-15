//
//  UIView+Addition.h
//  MMUIKit
//
//  Created by Loren on 2018/4/21.
//  Copyright © 2018年 Loren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)

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



@end

UIKIT_STATIC_INLINE CGFloat mm_get_view_width(UIView * v){
    return v.bounds.size.width;
}

UIKIT_STATIC_INLINE CGFloat mm_get_view_height(UIView * v){
    return v.bounds.size.height;
}

UIKIT_STATIC_INLINE CGFloat mm_get_view_center_x(UIView * v){
    return v.center.x;
}

UIKIT_STATIC_INLINE CGFloat mm_get_view_center_y(UIView * v){
    return v.center.y;
}

UIKIT_STATIC_INLINE CGPoint mm_get_view_center(UIView * v){
    return v.center;
}


UIKIT_STATIC_INLINE CGFloat mm_CGRectGetWidth(CGRect rect){
    return rect.size.width;
}

UIKIT_STATIC_INLINE CGFloat mm_CGRectGetHeight(CGRect rect){
    return rect.size.height;
}

UIKIT_STATIC_INLINE CGFloat mm_CGRectGetOriginX(CGRect rect){
    return rect.origin.x;
}

UIKIT_STATIC_INLINE CGFloat mm_CGRectGetOriginY(CGRect rect){
    return rect.origin.y;
}

UIKIT_STATIC_INLINE CGFloat mm_CGRectGetBottomX(CGRect rect){
    return mm_CGRectGetOriginX(rect) +  mm_CGRectGetWidth(rect);
}

UIKIT_STATIC_INLINE CGFloat mm_CGRectGetBottomY(CGRect rect){
    return mm_CGRectGetOriginY(rect) + mm_CGRectGetHeight(rect);
}
