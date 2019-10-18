//
//  MyClass.m
//  лекция 10.1 objective-c
//
//  Created by Лада on 18/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"Description of %@ ", [viewController class]);
}

@end
