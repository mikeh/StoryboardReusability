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

@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *theLayout;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mainCollectionView.dataSource = self;
    self.theLayout = [[UICollectionViewFlowLayout alloc] init];
    self.mainCollectionView.hidden = YES;
    [self.mainCollectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"Cell"];
}

- (void)viewDidLayoutSubviews
{
    self.theLayout.itemSize = CGSizeMake(self.mainCollectionView.bounds.size.width, 100);
    self.theLayout.minimumInteritemSpacing = 0.0f;
    self.theLayout.minimumLineSpacing = 1.0f;
    [self.mainCollectionView setCollectionViewLayout:self.theLayout];
    [self.mainCollectionView reloadData];
    
    [UIView animateWithDuration:0.4 animations:^{
        self.mainCollectionView.hidden = NO;
    }];
}

#pragma mark - UICollectionView DataSource and Delegate methods
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellLabel.text = @"NX-01 Enterprise";
    cell.cellImageView.image = [UIImage imageNamed:@"photo2"];
    
    return cell;
}

@end
