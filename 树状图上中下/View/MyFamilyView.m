//
//  MyFamilyView.m
//  smarket
//
//  Created by ym on 17/5/8.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "MyFamilyView.h"
#import "MyFamilyViewController.h"
#import "ConstantDefine.h"
@interface MyFamilyView()
//@property(nonatomic,assign)float cellYSpace;
//@property(nonatomic,assign)float cellXSpace;
//@property(nonatomic,assign)float cellWidth;
//@property(nonatomic,assign)float cellHeight;
//@property(nonatomic,assign)float lineWidth;
//@property(nonatomic,assign)CGColorRef cellBackground;
//@property(nonatomic,assign)CGColorRef lineColor;
@end

@implementation MyFamilyView

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
    self.backgroundColor = BGColor;
    [self addSubview:self.scrollview];
    
}
-(UIScrollView *)scrollview
{
    if (!_scrollview) {
        _scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, MainScreenW, MainScreenH - NavigationHeight)];
    }
    return _scrollview;
}

-(void)updateView
{
//    self.rootRectView =[MemberRectView alloc]init
    
}



///**
// *  计算最大高度
// *
// *  @param entity 当前树状图
// *
// *  @return 最高处的高度
// */
//-(float)getHeight:(MyMemberModel *)entity{
//    int height = 0;
//    for (int i= 0 ; i < entity.children.count ; i++) {
//        height+=[self getHeight:entity.children[i]];
//    }
//    return height?height:(cellHeight + cellYSpace);
//}
//
//
//
///**
// *  获取深度
// *
// *  @param entity 当前树状图
// *  @param v      当前节点深度 1开始
// *
// *  @return 最深的深度
// */
//-(float)getWidth:(MyMemberModel *)entity width:(int)v{
//    int maxwidth = v*(cellWidth+cellXSpace);
//    for (int i= 0 ; i < entity.children.count ; i++) {
//        float mw = [self getWidth:entity.children[i] width:v+1];
//        if (mw>maxwidth) {
//            maxwidth = mw;
//        }
//    }
//    return maxwidth?maxwidth:(cellWidth+cellXSpace);
//}
//
///**
// *  添加单元格
// *
// *  @param entity 当前树状图
// *  @param x      左边坐标
// *  @param y      上边坐标
// @  @reture       返回中点Y坐标
// */
//-(float)addCell:(MyMemberModel *)entity x:(float)x y:(float)y{
//    
//    float height =[self getHeight:entity];
//    float celly =_view.height-cellHeight - ((height-cellHeight)/2.0+y);//nsview的原点是左上所以y转了一下
//    MyMemberView* cell = [[MyMemberView alloc] init];
//    
//    cell.frame = CGRectMake(cellXSpace/2.0+x,celly, cellWidth, cellHeight);
//    [_view addSubview:cell];
//    [controller addCell:cell];
//    //左边的线
//    View* leftHorizontalLine = [[View alloc] initWithFrame:CGRectMake(x, celly+cellHeight/2.0, cellXSpace/2.0, lineWidth)];
////    leftHorizontalLine.wantsLayer = YES;
//    leftHorizontalLine.layer.backgroundColor = lineColor;
//    [_view addSubview:leftHorizontalLine];
//    
//    //添加子元素
//    float sh = y;
//    float topY = 0.0,bottomY = 0.0;
//    for (int i= 0 ; i < entity.children.count ; i++) {
//        float subcellY = [self addCell:entity.children[i] x:(x+cellXSpace+cellWidth) y:sh];
//        if (i == 0) {
//            topY = subcellY;
//        }else if(i == entity.children.count-1){
//            bottomY = subcellY;
//        }
//        
//        sh+=[self getHeight:entity.children[i]];
//    }
//    
//    //右边的线
//    if (entity.children.count>0) {
//        View* rightHorizontalLine = [[View alloc] initWithFrame:CGRectMake(x+cellWidth+cellXSpace/2.0, celly+cellHeight/2.0, cellXSpace/2.0, lineWidth)];
////        rightHorizontalLine.wantsLayer = YES;
//        rightHorizontalLine.layer.backgroundColor = lineColor;
//        [_view addSubview:rightHorizontalLine];
//        
//        if (entity.children.count>1) {
//            View* rightVerticallLine = [[View alloc] initWithFrame:CGRectMake(x+cellWidth+cellXSpace,bottomY, lineWidth, topY-bottomY)];
////            rightVerticallLine.wantsLayer = YES;
//            rightVerticallLine.layer.backgroundColor = lineColor;
//            [_view addSubview:rightVerticallLine];
//        }
//        
//    }
//    //用来算连接线坐标
//    return celly+cellHeight*0.5;
//}

@end




