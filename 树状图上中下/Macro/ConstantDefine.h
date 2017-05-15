//
//  ConstantDefine.h
//  smarket
//
//  Created by che on 16/10/31.
//  Copyright © 2016年 tlg. All rights reserved.
//


#ifndef ConstantDefine_h
#define ConstantDefine_h

#define IOS_VERSION_7_OR_ABOVE (([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)? (YES):(NO))
#define IOS_VERSION_8_OR_ABOVE (([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)? (YES):(NO))
#define SystemLanguage         [[NSLocale preferredLanguages] objectAtIndex:0]           //系统语言
#define FontStyle                                             @"AppleSDGothicNeo-Regular"//字体样式 如：宋体
//屏幕宽度和高度、导航栏高度
#define MainScreenW [UIScreen    mainScreen].bounds.size.width //屏幕宽
#define MainScreenH [UIScreen    mainScreen].bounds.size.height//屏幕高
#define NavigationHeight         64                            //导航栏高（包含状态栏）
#define TabbarHeight             49
#define appWindow [UIApplication sharedApplication].keyWindow

#define RGBA(r,g,b,a)           [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]
#define RGB(r,g,b)                                                                                RGBA(r,g,b,1)

//#define BGColor [UIColor            colorWithHexString:@"#f5f5f5"]//背景颜色 24 128 251
#define BGColor   RGBA(241,242,244,1)
#define TextColor [UIColor          colorWithHexString:@"#111111"]
#define NameColor [UIColor          colorWithHexString:@"#333333"]
#define GrayTextColor [UIColor  colorWithRed:185.0/255.0f green:185.0/255.0f blue:185.0/255.0f alpha:1.0]//淡灰色
#define GrayTextColor2 [UIColor     colorWithHexString:@"#666666"]//灰色，大部分字体颜色
#define CountColor [UIColor     colorWithHexString:@"#999999"]
#define GrayLightLineColor [UIColor colorWithHexString:@"#aaaaaa"]
#define GrayLineColor [UIColor      colorWithHexString:@"#dddddd"]
#define BorderBtnColor [UIColor     colorWithHexString:@"#b2b2b2"]
#define BorderColor [UIColor        colorWithHexString:@"#c0c0c0"]

#define RedTextColor [UIColor        colorWithHexString:@"#fe3935"]
#define LightRedTextColor [UIColor   colorWithHexString:@"#fe3935"]
#define WilteTextColor [UIColor      colorWithHexString:@"#ffffff"]
#define LightWilteTextColor [UIColor colorWithHexString:@"#90a0b5"]
#define NavibarColor [UIColor        whiteColor]
#define BtnColor [UIColor            colorWithHexString:@"#00c0e9"]
#define NAVIBAR_BG [SUtils           imageWithColor:NavibarColor]


#define BigTextFontSize [UIFont fontWithName:FontStyle  size:30]
#define TitleFontSize [UIFont fontWithName:FontStyle    size:20]
#define TextFontSize [UIFont fontWithName:FontStyle     size:15]
#define MidFontSize [UIFont fontWithName:FontStyle      size:18]
#define FontSize                                        18
#define SIXTextFontSize [UIFont fontWithName:FontStyle size:16]
#define GrayTextFontSize [UIFont fontWithName:FontStyle size:15]
#define SmallFontSize [UIFont fontWithName:FontStyle    size:12]
#define TagFontSize [UIFont fontWithName:FontStyle      size:30]
#define BoldFont(r) [UIFont                             boldSystemFontOfSize:r]


#define MarginLeft       15
#define MarginRight      15
#define MarginTop        10
#define MarginBottom     10
#define MarginCellTop    5
#define MarginCellBottom 5
#define LabelHeight      25
#define TextFielfHeight  25
#define BtnHeight        40
#define Margin           10

#define IconWid 25
#define emptyIconWid 140 //无数据时显示的view中，图片的宽度
#define CornerRadius 4

#define HeadWidth 70
#define HeadHeight (70+25)
#define XSpace 30
#define YSpace 60



#endif /* ConstantDefine_h */
