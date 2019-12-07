//
//  ViewController.m
//  testdelete
//
//  Created by ruixinyi on 2019/12/6.
//  Copyright © 2019 ruixinyi. All rights reserved.
//

#import "ViewController.h"
#import "outputLog.h"

@interface ViewController () {
    UILabel *firstLabel;
    UILabel *secondLabel;
}
@property(nonatomic,strong)UIWindow *showWindow;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [outputLog printSomething];
    
    UIButton *firstButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 100, 50)];
    [firstButton setTitle:@"Movie" forState:UIControlStateNormal];
    firstButton.backgroundColor = [UIColor orangeColor];
    [firstButton addTarget:self action:@selector(watchTVAtHome) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstButton];
    
    UIButton *secondButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 300, 100, 50)];
    [secondButton setTitle:@"Game" forState:UIControlStateNormal];
    secondButton.backgroundColor = [UIColor orangeColor];
    [secondButton addTarget:self action:@selector(playGameAtHome) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:secondButton];
    
    firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 100, 200, 200)];
    firstLabel.backgroundColor = [UIColor whiteColor];
    firstLabel.textAlignment = NSTextAlignmentCenter;
    firstLabel.font = [UIFont systemFontOfSize:100];
    [self.view addSubview:firstLabel];
    
    secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 300, 200, 200)];
    secondLabel.backgroundColor = [UIColor whiteColor];
    secondLabel.textAlignment = NSTextAlignmentCenter;
    secondLabel.font = [UIFont systemFontOfSize:100];
    [self.view addSubview:secondLabel];
    
    
}

- (void)test1 {
    self.showWindow = [[UIWindow alloc]initWithFrame:CGRectMake(100, 200, 300, 400)];  //
    self.showWindow.backgroundColor = [UIColor orangeColor];
    self.showWindow.windowLevel = 1000;
    self.showWindow.hidden = NO;
    [self.showWindow makeKeyAndVisible];
    NSLog(@"当前所有的window %@",[UIApplication sharedApplication].windows);
    
    UIViewController *vc = [[UIViewController alloc]init];
    vc.navigationItem.title = @"1223";
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    self.showWindow.rootViewController = nav;
    NSLog(@"1当前所有的window %@",[UIApplication sharedApplication].windows);
    
}
- (void)watchTVAtHome {
    firstLabel.text = @"🍿";
    secondLabel.text = @"";
}

- (void)playGameAtHome {
    firstLabel.text = @"";
    secondLabel.text = @"🎮";
   
}

@end
