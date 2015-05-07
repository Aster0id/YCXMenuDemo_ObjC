//
//  YCXMenu.h
//  YCXMenuDemo_ObjC
//
//  Created by 牛萌 on 15/5/6.
//  Copyright (c) 2015年 NiuMeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YCXMenuItem.h"

typedef void(^YCXMenuSelectedItem)(NSInteger index, YCXMenuItem *item);

typedef enum {
    YCXMenuBackgrounColorEffectSolid      = 0, //!<纯色
    YCXMenuBackgrounColorEffectGradient   = 1, //!<渐变叠加
} YCXMenuBackgrounColorEffect;

@interface YCXMenu : NSObject

+ (void)showMenuInView:(UIView *)view fromRect:(CGRect)rect menuItems:(NSArray *)menuItems selected:(YCXMenuSelectedItem)selectedItem;

+ (void)dismissMenu;


+ (UIColor *)tintColor;
+ (void)setTintColor:(UIColor *)tintColor;

+ (UIFont *)titleFont;
+ (void)setTitleFont:(UIFont *)titleFont;

+ (YCXMenuBackgrounColorEffect)backgrounColorEffect;
+ (void)setBackgrounColorEffect:(YCXMenuBackgrounColorEffect)effect;

+ (BOOL)hasShadow;
+ (void)setHasShadow:(BOOL)flag;

@end
