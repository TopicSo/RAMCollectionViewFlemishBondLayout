//
//  RAMCollectionAuxView.m
//  RAMCollectionViewFlemishBondLayoutDemo
//
//  Created by Rafael Aguilar Martín on 20/10/13.
//  Copyright (c) 2013 Rafael Aguilar Martín. All rights reserved.
//

#import "RAMCollectionAuxView.h"

@implementation RAMCollectionAuxView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        self.label.autoresizingMask = UIViewAutoresizingFlexibleWidth |
        UIViewAutoresizingFlexibleHeight;
        self.label.backgroundColor = [UIColor randomColor];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font = [UIFont boldSystemFontOfSize:13.0f];
        self.label.textColor = [UIColor blackColor];
        
        [self addSubview:self.label];
    }
    
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    self.label.text = nil;
}

@end
