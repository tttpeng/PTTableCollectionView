//
//  ViewController.m
//  PTTableCollectionView
//
//  Created by Peng Tao on 15/11/25.
//  Copyright © 2015年 Peng Tao. All rights reserved.
//

#import "ViewController.h"
#import "PTTableCollectionView.h"

@interface ViewController ()<PTTableCollectionViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  PTTableCollectionView *tableCollectionView =  [[PTTableCollectionView alloc] initWithFrame:self.view.frame];
  tableCollectionView.dataSource = self;
  [self.view addSubview:tableCollectionView];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfColumnsInTableView:(PTTableCollectionView *)tableView
{
  return 20;
}
- (NSInteger)numberOfRowsInTableView:(PTTableCollectionView *)tableView
{
  return 40;
}
- (NSString *)columnNameInColumn:(NSInteger)column
{
  return [NSString stringWithFormat:@"%d",column];
}
- (NSString *)rowNameInRow:(NSInteger)row
{
  return [NSString stringWithFormat:@"%d",row];
  
}
- (NSString *)contentAtColumn:(NSInteger)column row:(NSInteger)row
{
  return @"xxxx";
}
- (NSArray *)contentAtRow:(NSInteger)row
{
  return nil;
}

- (CGFloat)multiColumnTableView:(PTTableCollectionView *)tableView widthForContentCellInColumn:(NSInteger)column
{
  return 100;
}
- (CGFloat)multiColumnTableView:(PTTableCollectionView *)tableView heightForContentCellInRow:(NSInteger)row
{
  return 50;
}
- (CGFloat)heightForTopHeaderInTableView:(PTTableCollectionView *)tableView
{
  return 100;
}
- (CGFloat)WidthForLeftHeaderInTableView:(PTTableCollectionView *)tableView;
{
  return 50;
}

@end
