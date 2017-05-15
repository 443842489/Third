//
//  MyMemberView.m
//  smarket
//
//  Created by ym on 17/5/8.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "MyMemberView.h"
#import "Masonry.h"
#import "ConstantDefine.h"
@implementation MyMemberView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.iv_head];
    [self addSubview:self.lb_nick];
    [self.iv_head mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.width.mas_equalTo(HeadWidth);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(HeadWidth);
    }];
    [self.lb_nick mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.width.mas_equalTo(HeadWidth);
        make.top.mas_equalTo(self.iv_head.mas_bottom);
        make.height.mas_equalTo(LabelHeight);
    }];
    
}

-(UIImageView *)iv_head
{
    if (!_iv_head) {
        _iv_head                      = [[UIImageView alloc] init];
//        _iv_head.placeholderImageName = @"head";
//        _iv_head.displayWidth         = HeadWidth;
//        _iv_head.displayHeight        = HeadWidth;
    }
    return _iv_head;
}

-(UILabel *)lb_nick
{
    if (!_lb_nick) {
        _lb_nick               = [[UILabel alloc] init];
        _lb_nick.textAlignment=NSTextAlignmentCenter;
//        _lb_nick.textColor     = GrayTextColor2;
//        _lb_nick.textAlignment = NSTextAlignmentCenter;
//        _lb_nick.font          = TextFontSize;
//        _lb_nick.text          = @"";
    }
    return _lb_nick;
}


@end
