//
//  ViewController.h
//  FlipView
//
//  Created by johnathan rossitter on 6/30/12.
//  Copyright (c) 2012 Rossitter Consulting L.L.C. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"
@interface ViewController : UIViewController<TileDelegate>
{
    int tileWidthTemplate;
    int tileHeightTemplate;
    int tileMargin;
    NSMutableArray *itemList;
    IBOutlet UISearchBar *sbMain;
    NSTimer *searchTimer;

}
@property (retain, nonatomic) IBOutlet UIScrollView *svMain;
@property (retain, nonatomic) IBOutlet UISearchBar *sbMain;
@property (nonatomic, retain) NSMutableArray *itemList;
@property (nonatomic) int tileWidthTemplate;
@property (nonatomic) int tileHeightTemplate;
@property (nonatomic) int tileMargin;
@property (nonatomic, retain) NSTimer *searchTimer;




@end