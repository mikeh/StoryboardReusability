//
//  FirstViewController.m
//  StoryboardReusabilityR&D
//
//  Created by Mike Hatfield on 30/07/2015.
//  Copyright (c) 2015 Silviu Odobescu. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellLabel.text = @"NX-01 Enterprise";
    cell.cellImageView.image = [UIImage imageNamed:@"photo2"];
    
    return cell;
}

@end
