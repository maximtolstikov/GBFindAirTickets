// Для описания второго контролера

#import "SecondViewController.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

static NSString *const titleNavigationItem = @"Second Controller";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingController];    
}

-(void)settingController {
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(tapBackButton)];
    self.navigationItem.leftBarButtonItem = backButton;
    self.navigationItem.title = titleNavigationItem;
    self.view.backgroundColor = UIColor.blueColor;
}

-(void)tapBackButton {
    [self.navigationController popViewControllerAnimated:true];
}

@end
