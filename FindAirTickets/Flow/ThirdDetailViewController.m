// Для описания второго контролера

#import "ThirdDetailViewController.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ThirdDetailViewController ()

@end

@implementation ThirdDetailViewController

static NSString *const titleNavigationItem = @"Third Controller";
@synthesize pathToImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingController];
    [self addImageView];
}

-(void)settingController {
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(tapBackButton)];
    self.navigationItem.leftBarButtonItem = backButton;
    self.navigationItem.title = titleNavigationItem;
}

-(void)addImageView {
    CGFloat side = [UIScreen mainScreen].bounds.size.width - 40;
    CGRect frame = CGRectMake(20,
                              ([UIScreen mainScreen].bounds.size.height / 2 + 20) - (side / 2 + 20),
                              side,
                              side);
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    [self loadImage:pathToImage for:imageView];
}

-(void)loadImage: (NSString*) path for: (UIImageView*) viewImage {
    UIImage* image = [UIImage imageWithContentsOfFile:path];
    viewImage.image = image;
}

-(void)tapBackButton {
    [self.navigationController popViewControllerAnimated:true];
}

@end
