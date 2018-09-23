//Для реализации SecondTableViewController

#import "SecondTableViewController.h"
#import "CustomTableViewCell.h"
#import "ThirdDetailViewController.h"

@interface SecondTableViewController ()

@property (strong, nonnull) NSArray* iconsPathArray;

@end

@implementation SecondTableViewController

static NSString* const titleNavigationItem = @"Second Controller";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingController];
    [self getContentsImagesName];
}

-(void)getContentsImagesName {
    NSBundle* bundle = [NSBundle mainBundle];
    self.iconsPathArray = [bundle pathsForResourcesOfType:@"png" inDirectory:@"Images.bundle"];
    [self.tableView reloadData];
}

-(void)settingController {
    UIBarButtonItem* backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStylePlain
                                   target:self
                                   action:@selector(tapBackButton)];
    self.navigationItem.leftBarButtonItem = backButton;
    self.navigationItem.title = titleNavigationItem;
}

-(void)tapBackButton {
    [self.navigationController popViewControllerAnimated:true];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (_iconsPathArray == nil || _iconsPathArray.count == 0) {
        return 0;
    }
    return [_iconsPathArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Reuseigentifier];
    if(!cell) {
        cell = [[CustomTableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:Reuseigentifier];
    }
    cell.nameIconLable.text = [self.iconsPathArray[indexPath.row] lastPathComponent];
    cell.iconImage.image = [UIImage imageWithContentsOfFile:self.iconsPathArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ThirdDetailViewController* detailViewController = [ThirdDetailViewController new];
    detailViewController.pathToImage = self.iconsPathArray[indexPath.row];
    [self.navigationController pushViewController:detailViewController animated:false];
}

@end
