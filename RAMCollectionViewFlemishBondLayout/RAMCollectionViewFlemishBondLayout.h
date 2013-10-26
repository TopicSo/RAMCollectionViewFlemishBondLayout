//
//  RAMCollectionViewFlemishBondLayout.h
//  RAMCollectionViewFlemishBondLayout
//
//  Created by Rafael Aguilar Martín on 13/10/13.
//  Copyright (c) 2013 Rafael Aguilar Martín. All rights reserved.
//
//  This code is distributed under the terms and conditions of the MIT license.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <UIKit/UIKit.h>
#import "RAMCollectionViewFlemishBondLayoutAttributes.h"

FOUNDATION_EXPORT NSString *const RAMCollectionViewFlemishBondHeaderKind;
FOUNDATION_EXPORT NSString *const RAMCollectionViewFlemishBondFooterKind;

@class RAMCollectionViewFlemishBondLayout;

@protocol RAMCollectionViewFlemishBondLayoutDelegate <NSObject>
    @optional
    - (RAMCollectionViewFlemishBondLayoutGroupDirection)collectionView:(UICollectionView *)collectionView layout:(RAMCollectionViewFlemishBondLayout *)collectionViewLayout highlightedCellDirectionForGroup:(NSInteger)group atIndexPath:(NSIndexPath *)indexPath;
    - (CGSize)collectionView:(UICollectionView *)collectionView layout:(RAMCollectionViewFlemishBondLayout *)collectionViewLayout estimatedSizeForHeaderInSection:(NSInteger)section;
    - (CGSize)collectionView:(UICollectionView *)collectionView layout:(RAMCollectionViewFlemishBondLayout *)collectionViewLayout estimatedSizeForFooterInSection:(NSInteger)section;
@end

@interface RAMCollectionViewFlemishBondLayout : UICollectionViewLayout

@property (nonatomic, weak) id<RAMCollectionViewFlemishBondLayoutDelegate> delegate;
@property (nonatomic, assign) NSUInteger numberOfElements; // Number to be grouped cells. Default: 3
@property (nonatomic, assign) CGFloat highlightedCellWidth; // Width of highlighted cell. Default: self.collectionView.bounds.size.width / 2
@property (nonatomic, assign) CGFloat highlightedCellHeight; // Height of highlighted cell. Default: 200.0f

@end
