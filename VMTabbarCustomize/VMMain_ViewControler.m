//
//  VMMain_ViewControler.m
//  VMTabbarCustomize
//
//  Created by Vu Mai on 4/21/15.
//  Copyright (c) 2015 VuMai. All rights reserved.
//

#import "VMMain_ViewControler.h"
#import "VMTabBar.h"


@interface VMMain_ViewControler ()

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
    
    [tabbar addListOfItemImage:[NSMutableArray arrayWithObjects:@"icon_Summary.png",@"icon_Expences.png",@"icon_History.png",@"icon_setting.png", nil]];
    [tabbar addListOfItemText:[NSMutableArray arrayWithObjects:@"Summary",@"Expences",@"History",@"Setting", nil]];
    //    [tabbar setFontTabBar:[UIFont systemFontOfSize:12]];
    
    [tabbar iconTabBarWithNumber:4];
    [self.view addSubview:tabbar];
    
}

@end
