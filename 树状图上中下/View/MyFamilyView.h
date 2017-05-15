//
//  MyFamilyView.h
//  smarket
//
//  Created by ym on 17/5/8.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "View.h"

#import "MyMemberView.h"
#import "MemberRectView.h"
@interface MyFamilyView : View

@property (nonatomic,strong) UIScrollView *scrollview;
@property(nonatomic,strong)MyMemberModel *model;

@property(nonatomic,strong)MemberRectView *rootRectView;

@end
