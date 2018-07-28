//
//  HorizontalScrollCell.m
//  HorizontalScrollTable_9to5iOS
//
//  Created by admin on 28/07/18.
//  Copyright © 2018 admin. All rights reserved.
//

#import "HorizontalScrollCell.h"
#import "HorizontalScrollCollectionViewCell.h"
@implementation HorizontalScrollCell

- (void)awakeFromNib {
    arr_imageNames = [NSArray arrayWithObjects:@"game1",@"game2",@"game3", @"game4",nil];
    arr_gameNames  = [NSArray arrayWithObjects:@"Cat Game",@"Candy Shop",@"Cut the Ropes", @"Candy Crush",nil];
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HorizontalScrollCollectionViewCell *cell=(HorizontalScrollCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"HorizontalScrollCollectionViewCell" forIndexPath:indexPath];
    
    cell.imageView.image  = [UIImage imageNamed:[arr_imageNames objectAtIndex:indexPath.row]] ;
    cell.titleLabel.text  = [arr_gameNames objectAtIndex:indexPath.row];

    NSLog(@"value of row --->%ld",(long)indexPath.row);
    NSLog(@"value of section --->%ld",(long)indexPath.row);
    
    
    return cell;
}



- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [arr_imageNames count];;
}




@end
