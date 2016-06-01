# YCXMenuDemo_ObjC
![CocoaPods Version](https://img.shields.io/cocoapods/v/YCXMenu.svg?style=flat)
[![License](https://img.shields.io/github/license/aster0id/YCXMenuDemo_ObjC.svg?style=flat)](https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/LICENSE)

`TCXMenu` is an easy-to-use menu.
<img src="https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/Assets/YCXMenuDemo_ObjC_img1.gif" width="320">
<img src="https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/Assets/YCXMenuDemo_ObjC_img2.gif" width="320">


## Installation

### CocoaPods

```ruby
# Your Podfile
platform :ios, '7.0'
pod 'YCXMenu', '~> 0.0.11'
```

### Manually

* Drag the `YCXMenu` folder into your project.
* Add the **QuartzCore** framework to your project.


## Usage
```objc

	//set title
	YCXMenuItem *menuTitle = [YCXMenuItem menuTitle:@"Menu" WithIcon:nil];
	menuTitle.foreColor = [UIColor whiteColor];
	menuTitle.titleFont = [UIFont boldSystemFontOfSize:20.0f];

	//set logout button
	YCXMenuItem *logoutItem = [YCXMenuItem menuItem:@"Logout" image:nil target:self action:@selector(logout:)];
	logoutItem.foreColor = [UIColor redColor];
	logoutItem.alignment = NSTextAlignmentCenter;

	NSArray *items = @[menuTitle,
					 [YCXMenuItem menuItem:@"UserCenter"
                                    image:nil
                                      tag:100
                                 userInfo:@{@"title":@"Menu"}],
					 [YCXMenuItem menuItem:@"CheckOut"
                                    image:nil
                                      tag:102
                                 userInfo:@{@"title":@"Menu"}],
                    logoutItem
                    ];

	[YCXMenu showMenuInView:self.view fromRect:btn.frame menuItems:items selected:^(NSInteger index, YCXMenuItem *item) {
            NSLog(@"%@",item);
	}];

```

##Change

###0.0.11

Menu显示/消失的通知不足以满足需要，现改为4个通知。

- 删除2个通知
	- ~~YCXMenuAppearNotification. Menu显示时的通知。~~
	- ~~YCXMenuDisappearNotification. Menu消失时的通知。~~

- 新增4个通知
	- YCXMenuWillAppearNotification. Menu将要显示时的通知。
	- YCXMenuDidAppearNotification. Menu已经显示时的通知。
	- YCXMenuWillDisappearNotification. Menu将要消失时的通知。
	- YCXMenuDidDisappearNotification. Menu已经消失时的通知。
	
###0.0.10

因为Menu控件整体使用类方法控制属性及显示/隐藏的操作。因此使用通知的方式获取Menu显示/消失等状态更为方便合理。

- 添加2个通知
	- YCXMenuAppearNotification. Menu显示时的通知。
	- YCXMenuDisappearNotification. Menu消失时的通知。

###0.0.9

- 添加`+(void)setMenuItemMarginY:`方法，可以根据此方法控制菜单中每个元素在垂直方向上的内边距值,默认 12.0f;
- Add function `+(void)setMenuItemMarginY:`, you can use this function to set item's margin, default 12.0f;

###0.0.7

- 添加`+(void)setSeparatorColor:`方法，可以根据此方法控制分割线的颜色,默认 [UIColor colorWithRed:0.44 green:0.44 blue:0.44 alpha:1];
- Add function `+(void)setSeparatorColor:`, you can use this function to set menu's separator color, default [UIColor colorWithRed:0.44 green:0.44 blue:0.44 alpha:1];

###0.0.5

- 添加`+(void)setCornerRadius:(CGFloat)cornerRadius;`方法，可以根据此方法控制选择的`Item`圆角,默认 6.0f;
- Add function `+(void)setCornerRadius:(CGFloat)cornerRadius;`, you can use this function to set item's corner radius, default 6.0f;

- 添加`+(void)setArrowSize:(CGFloat)arrowSize;`方法，可以根据此方法控制选择的`Item`箭头尺寸,默认 10.0f;
- Add function `+(void)setArrowSize:(CGFloat)arrowSize;`, you can use this function to set item's arrow size, default 10.0f;

###0.0.4

- 添加`+(UIColor*)setSelectedColor`方法，可以根据此方法控制选择的`Item`颜色,默认蓝色;
- Add function `+(UIColor*)setSelectedColor;`,you can use this function to set item's selected Color,default blue;

###0.0.3

- 添加 `+(BOOL)isShow` 方法, 可以根据此方法手动控制YCXMenu的显示和隐藏;
- Add function `+(BOOL)isShow`, you can set show or hide YCXMenu expediently;


## Thanks

[XFerris](https://github.com/XFerris)


## Licenses

MIT License.
