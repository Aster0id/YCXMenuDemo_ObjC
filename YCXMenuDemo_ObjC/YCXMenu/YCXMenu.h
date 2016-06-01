//
//  YCXMenu.h
//  YCXMenuDemo_ObjC
//
//  Created by 牛萌 on 15/5/6.
//  Copyright (c) 2015年 NiuMeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YCXMenuItem.h"


// Menu将要显示的通知
extern NSString * const YCXMenuWillAppearNotification;
// Menu已经显示的通知
extern NSString * const YCXMenuDidAppearNotification;
// Menu将要隐藏的通知
extern NSString * const YCXMenuWillDisappearNotification;
// Menu已经隐藏的通知
extern NSString * const YCXMenuDidDisappearNotification;


typedef void(^YCXMenuSelectedItem)(NSInteger index, YCXMenuItem *item);

typedef enum {
    YCXMenuBackgrounColorEffectSolid      = 0, //!<背景显示效果.纯色
    YCXMenuBackgrounColorEffectGradient   = 1, //!<背景显示效果.渐变叠加
} YCXMenuBackgrounColorEffect;

@interface YCXMenu : NSObject

+ (void)showMenuInView:(UIView *)view fromRect:(CGRect)rect menuItems:(NSArray *)menuItems selected:(YCXMenuSelectedItem)selectedItem;

+ (void)dismissMenu;
+ (BOOL)isShow;

// 主题色
+ (UIColor *)tintColor;
+ (void)setTintColor:(UIColor *)tintColor;

// 圆角
+ (CGFloat)cornerRadius;
+ (void)setCornerRadius:(CGFloat)cornerRadius;

// 箭头尺寸
+ (CGFloat)arrowSize;
+ (void)setArrowSize:(CGFloat)arrowSize;

// 标题字体
+ (UIFont *)titleFont;
+ (void)setTitleFont:(UIFont *)titleFont;

// 背景效果
+ (YCXMenuBackgrounColorEffect)backgrounColorEffect;
+ (void)setBackgrounColorEffect:(YCXMenuBackgrounColorEffect)effect;

// 是否显示阴影
+ (BOOL)hasShadow;
+ (void)setHasShadow:(BOOL)flag;

// 选中颜色
+ (UIColor*)selectedColor;
+ (void)setSelectedColor:(UIColor*)selectedColor;

// 分割线颜色
+ (UIColor*)separatorColor;
+ (void)setSeparatorColor:(UIColor*)separatorColor;

/// 菜单元素垂直方向上的边距值
+ (CGFloat)menuItemMarginY;
+ (void)setMenuItemMarginY:(CGFloat)menuItemMarginY;

@end
