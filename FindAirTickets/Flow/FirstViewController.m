//
//  FirstViewController.m
//  FindAirTickets
//
//  Created by Maxim Tolstikov on 18/09/2018.
//  Copyright © 2018 Maxim Tolstikov. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondTableViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

static NSString *const titleNavigationItem = @"First Controller";
static NSString *const titleButton = @"Second Controller";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingController];
    [self addButton];
}

-(void)settingController {
    self.navigationItem.title = titleNavigationItem;
    self.view.backgroundColor = UIColor.greenColor;
}

-(void)addButton {
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 100, [UIScreen mainScreen].bounds.size.height/2 -25, 200.0, 50.0);
    UIButton* button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:titleButton forState:UIControlStateNormal];
    button.frame = frame;
    [button addTarget:self action:@selector(tapButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)tapButton {
    SecondTableViewController* secondTableViewController = [SecondTableViewController new];
    [self.navigationController pushViewController:secondTableViewController animated:true];
    NSLog(@"tap on button");
}

@end
