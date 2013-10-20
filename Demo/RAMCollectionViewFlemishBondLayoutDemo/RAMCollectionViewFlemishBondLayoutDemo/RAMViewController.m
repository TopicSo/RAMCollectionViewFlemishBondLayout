//
//  RAMViewController.m
//  RAMCollectionViewFlemishBondLayoutDemo
//
//  Created by Rafael Aguilar Martín on 20/10/13.
//  Copyright (c) 2013 Rafael Aguilar Martín. All rights reserved.
//

#import "RAMViewController.h"
#import "RAMCollectionViewCell.h"
#import "RAMCollectionAuxView.h"

static NSString *const CellIdentifier = @"MyCell";
static NSString * const HeaderIdentifier = @"HeaderIdentifier";
static NSString * const FooterIdentifier = @"FooterIdentifier";

@interface RAMViewController ()
    @property (nonatomic, strong) RAMCollectionViewFlemishBondLayout *collectionViewLayout;
    @property (nonatomic, readonly) UICollectionView *collectionView;
@end

@implementation RAMViewController

- (id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Getter
- (UICollectionView *)collectionView
{
    return (UICollectionView *)self.view;
}

#pragma mark - Setup
- (void)setup
{
    self.collectionViewLayout = [[RAMCollectionViewFlemishBondLayout alloc] init];
    self.collectionViewLayout.delegate = self;
    self.collectionViewLayout.numberOfElements = 3;
    self.collectionViewLayout.highlightedCellHeight = 150.f;
    self.collectionViewLayout.highlightedCellWidth = 200.f;
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.collectionViewLayout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    collectionView.backgroundColor = [UIColor yellowColor];
    [collectionView registerClass:[RAMCollectionViewCell class] forCellWithReuseIdentifier:CellIdentifier];
    [collectionView registerClass:[RAMCollectionAuxView class] forSupplementaryViewOfKind:RAMCollectionViewFlemishBondHeaderKind withReuseIdentifier:HeaderIdentifier];
    [collectionView registerClass:[RAMCollectionAuxView class] forSupplementaryViewOfKind:RAMCollectionViewFlemishBondFooterKind withReuseIdentifier:FooterIdentifier];
    
    self.view = collectionView;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 23;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    RAMCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [cell configureCellWithIndexPath:indexPath];
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;
{
    UICollectionReusableView *titleView;
    
    if (kind == RAMCollectionViewFlemishBondHeaderKind) {
        titleView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:HeaderIdentifier forIndexPath:indexPath];
        ((RAMCollectionAuxView *)titleView).label.text = @"Header";
    } else if (kind == RAMCollectionViewFlemishBondFooterKind) {
        titleView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:FooterIdentifier forIndexPath:indexPath];
        ((RAMCollectionAuxView *)titleView).label.text = @"Footer";
    }
    
    return titleView;
}

#pragma mark - RAMCollectionViewVunityLayoutDelegate
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(RAMCollectionViewFlemishBondLayout *)collectionViewLayout estimatedSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(CGRectGetWidth(self.collectionView.frame), 100);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(RAMCollectionViewFlemishBondLayout *)collectionViewLayout estimatedSizeForFooterInSection:(NSInteger)section
{
    return CGSizeMake(CGRectGetWidth(self.collectionView.frame), 100);
}

- (RAMCollectionViewFlemishBondLayoutGroupDirection)collectionView:(UICollectionView *)collectionView layout:(RAMCollectionViewFlemishBondLayout *)collectionViewLayout highlightedCellDirectionForGroup:(NSInteger)group atIndexPath:(NSIndexPath *)indexPath
{
    RAMCollectionViewFlemishBondLayoutGroupDirection direction;
    
    if (indexPath.row % 2) {
        direction = RAMCollectionViewFlemishBondLayoutGroupDirectionRight;
    } else {
        direction = RAMCollectionViewFlemishBondLayoutGroupDirectionLeft;
    }
    
    return direction;
}

@end
