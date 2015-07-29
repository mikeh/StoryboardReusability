//
//  CollectionViewCell.m
//  StoryboardReusabilityR&D
//
//  Created by Silviu Odobescu on 24/07/15.
//  Copyright (c) 2015 Silviu Odobescu. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (id)awakeAfterUsingCoder:(NSCoder *)aDecoder
{
    if (![self.contentView.subviews count])
    {
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSArray *loadedViews = [mainBundle loadNibNamed:@"CollectionViewCell" owner:nil options:nil];
        return [loadedViews firstObject];
    }
    return self;
}

@end
