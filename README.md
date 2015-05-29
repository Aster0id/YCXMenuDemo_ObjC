# YCXMenuDemo_ObjC
简单方便的Menu控件, 参考[kxmenu](https://github.com/kolyvan/kxmenu/)效果


<img src="https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/Assets/YCXMenuDemo_ObjC_img1.gif" width="320">
<img src="https://github.com/Aster0id/YCXMenuDemo_ObjC/blob/master/Assets/YCXMenuDemo_ObjC_img2.gif" width="320">


### USAGE
``` objc

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


### Licenses

MIT License.
