# YCXMenuDemo_ObjC
![CocoaPods Version](https://img.shields.io/cocoapods/v/YCXMenu.svg?style=flat)
[![License](https://img.shields.io/github/license/aster0id/YCXMenuDemo_ObjC.svg?style=flat)](https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/LICENSE)

`TCXMenu` is an easy-to-use menu. Reference [kxmenu](https://github.com/kolyvan/kxmenu/) effect

<img src="https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/Assets/YCXMenuDemo_ObjC_img1.gif" width="320">
<img src="https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/Assets/YCXMenuDemo_ObjC_img2.gif" width="320">


## Installation

### CocoaPods

```ruby
# Your Podfile
platform :ios, '7.0'
pod 'YCXMenu', '~> 0.0.4'
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

