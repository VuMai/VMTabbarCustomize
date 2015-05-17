# VMTabbarCustomize
https://youtu.be/7ioru9E6nGg

## Author
Vumai
vumai.mlh@gmail.com
Vumai.me

## Overview ##

VMTabbarCustomize is an iOS control. It replaced the default controller TabBar in xcode with a new tabbar with animation.It's something fun and beauty if you enjoy.

## Required ##
You need a high-resolusion icon!
Suggest 84x84 with @2x image
127x127 @3x image

## How to use ##

First, you need to copy 2 files VMTabBar.h/.m to your project. Then, import them to your class

```objc
#import "VMTabBar.h"
```

Now you can add this funtion to show VMTabBar:

```objc
    VMTabBar *tabbar = [[VMTabBar alloc] initWithFrame:self.view.frame];
    [tabbar setDelegate:self];//1
    
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
    [tabbar addListOfViewWhenClickTabbar:arrView]; //2
    [tabbar addListOfItemImage:[NSMutableArray arrayWithObjects:@"icon_Summary.png",@"icon_Expences.png",@"icon_History.png",@"icon_setting.png", nil]]; //3
    [tabbar addListOfItemText:[NSMutableArray arrayWithObjects:@"Summary",@"Expences",@"History",@"Setting", nil]]; //4
    
    [tabbar iconTabBarWithNumber:4]; // 5
    [tabbar selectTabBarValueWithTag:1]; //6
    [tabbar changeColorTabbarWithColor:[UIColor whiteColor]]; //7
    [self.view addSubview:tabbar];
```
Let’s run through this method step by step:
1: You set the view controller as the delegate of the VMTabBar so that the view controller can receive the relevant delegate method calls.

2. You make 4 UIViewController or UIView are presented for 4 icons.
3. List of icons you can show.
4. List of names for tab
5. You call iconTabBarWithNumber: which build new tabbar which animation with base of data from (2) (3) (4). The methor also load icons, views and texts in this view.
6. Select tab you want to first load.
7. you can change color of the icon and the text that you want. If you cant's use this method the color of icon is default icon image.


## Release notes

Version 1.0

## MIT License
Copyright (c) 2015 VuMai

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
