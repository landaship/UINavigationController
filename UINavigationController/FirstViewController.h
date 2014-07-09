//
//  FirstViewController.h
//  UINavigationController
//
//  Created by Louis on 14-7-9.
//  Copyright (c) 2014年 Louis. All rights reserved.
//

#import <UIKit/UIKit.h>

// 这里继承错了，不能继承navigationcontroller，因为navigationcontroller必须指定他的rootviewcontroller，而且，appdelegate里面的navigation也不能在以navigation作为子控件了
// @interface FirstViewController : UINavigationController
@interface FirstViewController : UIViewController

@end
