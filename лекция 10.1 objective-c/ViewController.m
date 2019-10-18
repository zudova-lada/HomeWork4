//
//  ViewController.m
//  лекция 10.1 objective-c
//
//  Created by Лада on 14/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *buttom;

@end

@implementation ViewController
-(instancetype) init
{
    self = [super init];
    if(self)
    {
        _buttom = [UIButton buttonWithType:UIButtonTypeCustom];
        [_buttom setTitle:@"Назад" forState: UIControlStateNormal];
        _buttom.backgroundColor = [UIColor whiteColor];
        [_buttom setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
        [_buttom addTarget:self
                    action:@selector(tapButton)
          forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:_buttom];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.buttom.frame = CGRectMake(25.0, 150.0, 100.0, 40.0);
}

-(void) tapButton
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
