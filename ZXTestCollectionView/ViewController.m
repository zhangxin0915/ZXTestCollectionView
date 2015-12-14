//
//  ViewController.m
//  ZXTestCollectionView
//
//  Created by macmini on 15/12/14.
//  Copyright © 2015年 macmini. All rights reserved.
//

#import "ViewController.h"
#import "ItemCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UICollectionViewFlowLayout *collFolw = [[UICollectionViewFlowLayout alloc]init];
    UICollectionView  *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 320, 568) collectionViewLayout:collFolw];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    collectionView.backgroundView = nil;
    collectionView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:collectionView];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"simpleCell"];
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10,0, 0);
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width / 3 - 20, 40);
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
   static  NSString *identifier = @"simpleCell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(20, 0, 60, 40)];
    lab.text  = @"123456789";
    lab.backgroundColor = [UIColor greenColor];
    [cell addSubview:lab];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
