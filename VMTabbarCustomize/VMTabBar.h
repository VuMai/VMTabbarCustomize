//
//  VMTabBar.h
//  VMTabbarCustomize
//
//  Created by Vu Mai on 4/21/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import <UIKit/UIKit.h>
#define rgb(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1]

@protocol VMTabBarDelegate;
@interface VMTabBar : UIView
@property (nonatomic) id<VMTabBarDelegate> delegate;

-(void)iconTabBarWithNumber:(NSInteger)num;
-(void)setFontTabBar:(UIFont*)font;
-(void)addListOfItemText:(NSMutableArray*)arr;
-(void)addListOfItemImage:(NSMutableArray*)arr;
-(void)selectTabBarValueWithTag:(NSInteger)tag;
-(void)changeColorTabbarWithColor:(UIColor*)color;
-(void)addListOfViewWhenClickTabbar:(NSMutableArray*)arr;
@end

@protocol VMTabBarDelegate <NSObject>

@required
-(void)VMTabBar:(VMTabBar*)tabbar switchTabWithTag:(NSInteger)tag;
@end