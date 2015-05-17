//
//  VMMain_ViewControler.m
//  VMTabbarCustomize
//
//  Created by Vu Mai on 4/21/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMMain_ViewControler.h"
#import "VMTabBar.h"

@interface VMMain_ViewControler ()<VMTabBarDelegate, UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation VMMain_ViewControler

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTabBar];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initTabBar
{
    VMTabBar *tabbar = [[VMTabBar alloc] initWithFrame:self.view.frame];
    
    // make view when show for click tabbar
    NSMutableArray *arrColor = [NSMutableArray arrayWithObjects:
                                rgb(52, 152, 219),
                                rgb(26, 188, 156),
                                rgb(231, 76, 60),
                                rgb(230, 126, 34),nil];
    NSMutableArray *arrView = [NSMutableArray array];
    for (NSInteger i = 0; i<4; i++) {
        UIView *vi = [[UIView alloc] init];
        [vi setBackgroundColor:(UIColor*)[arrColor objectAtIndex:i]];
        [arrView addObject:vi];
    }
    [tabbar addListOfViewWhenClickTabbar:arrView];
    
    [tabbar addListOfItemImage:[NSMutableArray arrayWithObjects:@"icon_Summary.png",@"icon_Expences.png",@"icon_History.png",@"icon_setting.png", nil]];
    [tabbar addListOfItemText:[NSMutableArray arrayWithObjects:@"Summary",@"Expences",@"History",@"Setting", nil]];
    [tabbar setDelegate:self];
    
    
    [tabbar iconTabBarWithNumber:4];
    [tabbar selectTabBarValueWithTag:1];
    [tabbar changeColorTabbarWithColor:[UIColor whiteColor]];
    [self.view addSubview:tabbar];
}



#pragma mark - Tabar delegate
-(void)VMTabBar:(VMTabBar *)tabbar switchTabWithTag:(NSInteger)tag
{
    NSLog(@"tag click: %li",(long)tag);
}

@end
