//
//  CollectionViewCell.h
//  StoryboardReusabilityR&D
//
//  Created by Silviu Odobescu on 24/07/15.
//  Copyright (c) 2015 Silviu Odobescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

@end
