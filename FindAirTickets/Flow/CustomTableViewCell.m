//
//  CustomTableViewCell.m
//  FindAirTickets
//
//  Created by Maxim Tolstikov on 22/09/2018.
//  Copyright © 2018 Maxim Tolstikov. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        _iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(16.0, 16.0, 32.0, 32.0)];
        _nameIconLable = [[UILabel alloc] initWithFrame:CGRectMake(52.0,
                                                                   0.0,
                                                                   [UIScreen mainScreen].bounds.size.width / 2.0,
                                                                   44.0)];
        
        [self.contentView addSubview:_iconImage];
        [self.contentView addSubview:_nameIconLable];
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return self;
}

@end
