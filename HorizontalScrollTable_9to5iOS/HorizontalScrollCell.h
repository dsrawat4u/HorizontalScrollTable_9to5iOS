//
//  HorizontalScrollCell.h
//  HorizontalScrollTable_9to5iOS
//
//  Created by admin on 28/07/18.
//  Copyright © 2018 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalScrollCell : UITableViewCell< UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
{
    NSArray* arr_imageNames;
    NSArray* arr_gameNames ;
    
    
}
@property(weak,nonatomic) IBOutlet  UICollectionView *collectionView;

@end
