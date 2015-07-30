//
//  SecondViewController.m
//  StoryboardReusabilityR&D
//
//  Created by Silviu Odobescu on 29/07/15.
//  Copyright (c) 2015 Silviu Odobescu. All rights reserved.
//

#import "SecondViewController.h"
#import "CollectionViewCell.h"

@interface SecondViewController () < UICollectionViewDataSource >

@end

@implementation SecondViewController

#pragma mark - UICollectionView DataSource and Delegate methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellLabel.text = @"NX-01 Enterprise";
    cell.cellImageView.image = [UIImage imageNamed:@"photo2"];
    
    return cell;
}

@end
