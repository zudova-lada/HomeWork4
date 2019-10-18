//
//  UIViewController.m
//  лекция 10.1 objective-c
//
//  Created by Лада on 14/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) UIButton *buttom;
@property (nonatomic, strong) ViewController *viewController;

@end

@implementation RootViewController

-(instancetype) init
{
    self = [super init];
    if (self)
    {
        _buttom = [UIButton new];
//        так не работает
//        _buttom.titleLabel.text = @"Привет, красавчик";
        [_buttom setTitle:@"Привет!" forState:UIControlStateNormal];
        _buttom.backgroundColor = [UIColor greenColor];
        [self.view addSubview:_buttom];
        
        _viewController = [ViewController new];
    }
    return self;
}

-(void) tapButton
{
    [self.navigationController pushViewController:self.viewController animated:TRUE];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor redColor];
    
    CGRect myRect = self.view.frame;
    self.buttom.center = CGPointMake(CGRectGetMidX(myRect), CGRectGetMidY(myRect));
    self.buttom.frame = CGRectMake(CGRectGetMidX(myRect) - 50.0,
                                   CGRectGetMidY(myRect) - 20.0,
                                   100.0,
                                   40.0);
    
    [self.buttom addTarget:self
                    action:@selector(tapButton)
          forControlEvents: UIControlEventTouchDown];
    
    [self.view addSubview: self.buttom];
}

@end
