//
//  MemberRectView.m
//  smarket
//
//  Created by ym on 17/5/10.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "MemberRectView.h"
#import "Masonry.h"
#import "ConstantDefine.h"
@interface MemberRectView()

@end
@implementation MemberRectView

-(instancetype)initWithMemberModel:(MyMemberModel*)model andIsup:(BOOL)isup;
{
    self = [super init];
    if (self) {
        self.menberView.model=model;
        self.isup=isup;
        [self setup];
    }
    return self;
}

-(instancetype)initWithMemberModel:(MyMemberModel*)model andIsLeft:(BOOL)isLeft andIsRight:(BOOL)isRight
{
    self = [super init];
    if (self) {
        self.menberView.model=model;
        self.isLeft=isLeft;
        self.isRight=isRight;
        [self setupX2];
    }
    return self;
}

- (void)setup
{
//    self.startX=0;
    [self addSubview:self.menberView];
    
    [self.menberView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.centerY.mas_equalTo(self.mas_centerY);
        make.width.mas_equalTo(HeadWidth);
        make.height.mas_equalTo(HeadHeight);
    }];
    
    if(self.isup==YES)
    {
        self.yBottomLine=[[View alloc]init];//底部的那根竖线
        self.yBottomLine.backgroundColor=[UIColor blackColor];
        [self addSubview:self.yBottomLine];
        [self.yBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.mas_centerX);
            make.top.mas_equalTo(self.menberView.mas_bottom);
            make.width.mas_equalTo(1);
            make.height.mas_equalTo(YSpace/2);
        }];
        
        if(self.menberView.model.parent.count>0)
        {
            //要画竖向分支线(有多少个分支，画多少条竖线。包括分支源头的那根竖线)
            
            self.yFromLine=[[View alloc]init];//上面的那根竖线
            self.yFromLine.backgroundColor=[UIColor blueColor];
            [self addSubview:self.yFromLine];
            [self.yFromLine mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.mas_equalTo(self.mas_centerX);
                make.bottom.mas_equalTo(self.menberView.mas_top);
                make.width.mas_equalTo(1);
                make.height.mas_equalTo(YSpace/2);
            }];
     
        }else{
//            self.yFromLine.hidden=YES;
        }
    }else{
        
        self.yFromLine=[[View alloc]init];//上面的那根竖线
        self.yFromLine.backgroundColor=[UIColor blackColor];
        [self addSubview:self.yFromLine];
        [self.yFromLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.mas_centerX);
            make.bottom.mas_equalTo(self.menberView.mas_top);
            make.width.mas_equalTo(1);
            make.height.mas_equalTo(YSpace/2);
        }];
        
        if(self.menberView.model.children.count>0)
        {
            self.yBottomLine=[[View alloc]init];//底部的那根竖线
            self.yBottomLine.backgroundColor=[UIColor blackColor];
            [self addSubview:self.yBottomLine];
            [self.yBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.mas_equalTo(self.mas_centerX);
                make.top.mas_equalTo(self.menberView.mas_bottom);
                make.width.mas_equalTo(1);
                make.height.mas_equalTo(YSpace/2);
            }];
        }
    }
    
}

- (void)setupX2{
    
    [self addSubview:self.menberView];
    
    [self.menberView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.centerY.mas_equalTo(self.mas_centerY);
        make.width.mas_equalTo(HeadWidth);
        make.height.mas_equalTo(HeadHeight);
    }];
    
    if(self.isLeft==YES)
    {
        self.xLeftLine=[[View alloc]init];
        self.xLeftLine.backgroundColor=[UIColor blackColor];
        [self addSubview:self.xLeftLine];
        [self.xLeftLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(0);
            make.right.mas_equalTo(self.menberView.mas_left);
            make.centerY.mas_equalTo(self.mas_centerY);
            make.height.mas_equalTo(1);
        }];
    }
    if(self.isRight==YES)
    {
        self.xRightLine=[[View alloc]init];
        self.xRightLine.backgroundColor=[UIColor blackColor];
        [self addSubview:self.xRightLine];
        [self.xRightLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(0);
            make.left.mas_equalTo(self.menberView.mas_right);
            make.centerY.mas_equalTo(self.mas_centerY);
            make.height.mas_equalTo(1);
        }];
    }
}

-(void)createLineLeft:(BOOL)isLeft Right:(BOOL)isRight
{
    if(isLeft==YES)
    {
        self.xLeftLine=[[View alloc]init];
        self.xLeftLine.backgroundColor=[UIColor blackColor];
        [self addSubview:self.xLeftLine];
        [self.xLeftLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XSpace/2);
            make.right.mas_equalTo(self.menberView.mas_left);
            make.centerY.mas_equalTo(self.mas_centerY);
            make.height.mas_equalTo(1);
        }];
    }
    if(isRight==YES)
    {
        self.xRightLine=[[View alloc]init];
        self.xRightLine.backgroundColor=[UIColor blackColor];
        [self addSubview:self.xRightLine];
        [self.xRightLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XSpace/2);
            make.left.mas_equalTo(self.menberView.mas_right);
            make.centerY.mas_equalTo(self.mas_centerY);
            make.height.mas_equalTo(1);
        }];
    }
}

- (MyMemberView *)menberView {
	if (_menberView == nil) {
        _menberView = [[MyMemberView alloc] init];
	}
	return _menberView;
}

@end





