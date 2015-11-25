//
//  PTTableCollectionView.h
//  PTTableCollectionView
//
//  Created by Peng Tao on 15/11/25.
//  Copyright © 2015年 Peng Tao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PTTableCollectionView;
@protocol PTTableCollectionViewDelegate <NSObject>

@required


- (NSInteger)numberOfColumnsInTableView:(PTTableCollectionView *)tableView;
- (NSInteger)numberOfRowsInTableView:(PTTableCollectionView *)tableView;
- (NSString *)columnNameInColumn:(NSInteger)column;
- (NSString *)rowNameInRow:(NSInteger)row;
- (NSString *)contentAtColumn:(NSInteger)column row:(NSInteger)row;
- (NSArray *)contentAtRow:(NSInteger)row;

- (CGFloat)multiColumnTableView:(PTTableCollectionView *)tableView widthForContentCellInColumn:(NSInteger)column;
- (CGFloat)multiColumnTableView:(PTTableCollectionView *)tableView heightForContentCellInRow:(NSInteger)row;
- (CGFloat)heightForTopHeaderInTableView:(PTTableCollectionView *)tableView;
- (CGFloat)WidthForLeftHeaderInTableView:(PTTableCollectionView *)tableView;

@end

@interface PTTableCollectionView : UIView

@property (nonatomic, weak) id<PTTableCollectionViewDelegate>dataSource;


@end
