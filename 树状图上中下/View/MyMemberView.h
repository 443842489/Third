//
//  MyMemberView.h
//  smarket
//
//  Created by ym on 17/5/8.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "View.h"
#import "MyMemberModel.h"
@interface MyMemberView : View
@property (nonatomic,strong) NSIndexPath *indexPath;//位置
@property (nonatomic,strong) UIImageView *iv_head;//头像

@property (nonatomic,strong) UILabel *lb_nick;//称谓
@property (nonatomic,strong) MyMemberModel *model;

//-(instancetype)initWithMemberModel:(MyMemberModel*)model;
@end
