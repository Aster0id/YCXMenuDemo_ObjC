//
//  ViewController.m
//  YCXMenuDemo_ObjC
//
//  Created by 牛萌 on 15/5/6.
//  Copyright (c) 2015年 NiuMeng. All rights reserved.
//

#import "ViewController.h"
#import "YCXMenu.h"

@interface ViewController ()

@property (nonatomic , strong) NSMutableArray *items;

@end

@implementation ViewController
@synthesize items = _items;
#pragma mark - Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions
- (void)logout:(id)sender {
    NSLog(@"退出登录");
}

- (IBAction)showMenu1FromNavigationBarItem:(id)sender {
    
    // 通过NavigationBarItem显示Menu
    if (sender == self.navigationItem.rightBarButtonItem) {
        [YCXMenu setTintColor:[UIColor colorWithRed:0.118 green:0.573 blue:0.820 alpha:1]];
        [YCXMenu setSelectedColor:[UIColor redColor]];
        if ([YCXMenu isShow]){
            [YCXMenu dismissMenu];
        } else {
            [YCXMenu showMenuInView:self.view fromRect:CGRectMake(self.view.frame.size.width - 50, 0, 50, 0) menuItems:self.items selected:^(NSInteger index, YCXMenuItem *item) {
                NSLog(@"%@",item);
            }];
        }
    }
}

- (IBAction)showMenuFromLeftTop:(id)sender {
    // 显示默认样式的Menu
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *btn = sender;
        [YCXMenu showMenuInView:self.view fromRect:btn.frame menuItems:self.items selected:^(NSInteger index, YCXMenuItem *item) {
            NSLog(@"%@",item);
        }];
    }
}

- (IBAction)showMenuFromRightBottom:(id)sender {
    // 显示默认样式的Menu
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *btn = sender;
        [YCXMenu setHasShadow:NO];
        [YCXMenu setArrowSize:6];
        [YCXMenu setCornerRadius:2];
        [YCXMenu setBackgrounColorEffect:YCXMenuBackgrounColorEffectSolid];
        [YCXMenu setTintColor:[UIColor colorWithRed:0.212 green:0.255 blue:0.678 alpha:1]];
        [YCXMenu showMenuInView:self.view fromRect:btn.frame menuItems:self.items selected:^(NSInteger index, YCXMenuItem *item) {
            NSLog(@"%@",item);
        }];
    }
}

- (IBAction)showMenuFromLeftBottom:(id)sender {
    // 显示默认样式的Menu
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *btn = sender;
        [YCXMenu setHasShadow:YES];
        [YCXMenu setBackgrounColorEffect:YCXMenuBackgrounColorEffectGradient];
        [YCXMenu setTintColor:[UIColor colorWithRed:0.212 green:0.255 blue:0.678 alpha:1]];
        [YCXMenu showMenuInView:self.view fromRect:btn.frame menuItems:self.items selected:^(NSInteger index, YCXMenuItem *item) {
            NSLog(@"%@",item);
        }];
    }
}

- (IBAction)showMenuFromCenter:(id)sender {
    // 显示默认样式的Menu
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *btn = sender;
        [YCXMenu setHasShadow:YES];
        [YCXMenu setBackgrounColorEffect:YCXMenuBackgrounColorEffectGradient];
        [YCXMenu setTintColor:[UIColor colorWithRed:0.212 green:0.255 blue:0.678 alpha:1]];
        [YCXMenu setSeparatorColor:[UIColor redColor]];
        
        [YCXMenu setTitleFont:[UIFont systemFontOfSize:24.0]];
        [YCXMenu showMenuInView:self.view fromRect:btn.frame menuItems:self.items selected:^(NSInteger index, YCXMenuItem *item) {
            NSLog(@"%@",item);
        }];
    }
}

#pragma mark - setter/getter
- (NSMutableArray *)items {
    if (!_items) {
        
        // set title
        YCXMenuItem *menuTitle = [YCXMenuItem menuTitle:@"Menu" WithIcon:nil];
        menuTitle.foreColor = [UIColor whiteColor];
        menuTitle.titleFont = [UIFont boldSystemFontOfSize:20.0f];
        
        //set logout button
        YCXMenuItem *logoutItem = [YCXMenuItem menuItem:@"退出" image:nil target:self action:@selector(logout:)];
        logoutItem.foreColor = [UIColor redColor];
        logoutItem.alignment = NSTextAlignmentCenter;
        
        //set item
        _items = [@[menuTitle,
                    [YCXMenuItem menuItem:@"个人中心"
                                    image:nil
                                      tag:100
                                 userInfo:@{@"title":@"Menu"}],
                    [YCXMenuItem menuItem:@"ACTION 133"
                                    image:nil
                                      tag:101
                                 userInfo:@{@"title":@"Menu"}],
                    [YCXMenuItem menuItem:@"检查更新"
                                    image:nil
                                      tag:102
                                 userInfo:@{@"title":@"Menu"}],
                    logoutItem
                    ] mutableCopy];
    }
    return _items;
}

- (void)setItems:(NSMutableArray *)items {
    _items = items;
}

@end
