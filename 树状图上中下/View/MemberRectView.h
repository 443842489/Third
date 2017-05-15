//
//  MemberRectView.h
//  smarket
//
//  Created by ym on 17/5/10.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "View.h"
#import "MyMemberView.h"
#import "MyMemberModel.h"
@interface MemberRectView : View
@property(nonatomic,strong)MyMemberView *menberView;//中间显示人物信息的view
@property(nonatomic,strong)View * yFromLine;//menberView的上方竖线
@property(nonatomic,strong)View * yBottomLine;//menberView的下方竖线
@property(nonatomic,strong)View * xLeftLine;//menberView的左边横线
@property(nonatomic,strong)View * xRightLine;//menberView的右边横线

@property(nonatomic,assign)BOOL isup;//是否是上方的基本单元

@property(nonatomic,assign)BOOL isLeft;//是否显示左边短横线
@property(nonatomic,assign)BOOL isRight;//是否显示右边短横线

-(instancetype)initWithMemberModel:(MyMemberModel*)model andIsup:(BOOL)isup;
-(instancetype)initWithMemberModel:(MyMemberModel*)model andIsLeft:(BOOL)isLeft andIsRight:(BOOL)isLeft ;//添加同辈用的

-(void)createLineLeft:(BOOL)isLeft Right:(BOOL)isRight;//创建root单元的左右长度为 XSpace/2 的短横线
@end
