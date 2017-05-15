//
//  MyFamilyViewController.m
//  smarket
//
//  Created by ym on 17/5/9.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "MyFamilyViewController.h"
#import "MyFamilyView.h"

#import "MyMemberModel.h"
#import "MyMemberView.h"
#import "MemberRectView.h"
#import "ConstantDefine.h"
#import "Masonry.h"
@interface MyFamilyViewController ()
@property(nonatomic,strong)MyFamilyView *view_main;
@property(nonatomic,strong)MyMemberModel *fModel;

@property(nonatomic,assign)CGFloat maxWidth;
@property(nonatomic,assign)CGFloat maxHeight;
@property(nonatomic,assign)CGFloat smallMaxWidth;
@property(nonatomic,assign)CGFloat upMaxWidth;
@property(nonatomic,assign)CGFloat midMaxWidth;
@property(nonatomic,assign)CGFloat downMaxWidth;
@end

@implementation MyFamilyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
    [self createData];
}

-(void)createUI
{
    [self.view addSubview:self.view_main];
}

-(void)createData
{
    self.fModel=[[MyMemberModel alloc]init];
    self.fModel.title=@"root";
    
    for(int i=0;i<5;i++)
    {
    MyMemberModel *modelx=[[MyMemberModel alloc]init];
    modelx.title=@"x1";
    [self.fModel.compeer addObject:modelx];
    }
    MyMemberModel *model=[[MyMemberModel alloc]init];
    model.title=@"1";
    [self.fModel.parent addObject:model];
    
    
    MyMemberModel *model01=[[MyMemberModel alloc]init];
    model01.title=@"-1";
    [self.fModel.children addObject:model01];
    
    MyMemberModel *model011=[[MyMemberModel alloc]init];
    model011.title=@"-11";
    [model01.children addObject:model011];
    
    MyMemberModel *model02=[[MyMemberModel alloc]init];
    model02.title=@"-2";
    [self.fModel.children addObject:model02];
    
    MyMemberModel *model021=[[MyMemberModel alloc]init];
    model021.title=@"-21";
    [model02.children addObject:model021];
    
    MyMemberModel *model0221=[[MyMemberModel alloc]init];
    model0221.title=@"-221";
    [model021.children addObject:model0221];
    
    MyMemberModel *model03=[[MyMemberModel alloc]init];
    model03.title=@"-3";
    [self.fModel.children addObject:model03];
    
//    for(int i=4;i<100;i++)
    for(int i=4;i<8;i++)
    {
        MyMemberModel *model03=[[MyMemberModel alloc]init];
        model03.title=[NSString stringWithFormat:@"-%d",i];
        [self.fModel.children addObject:model03];
    }
    
    MyMemberModel *model11=[[MyMemberModel alloc]init];
    model11.title=@"11";
    [model.parent addObject:model11];
    
    MyMemberModel *model12=[[MyMemberModel alloc]init];
    model12.title=@"12";
    [model.parent addObject:model12];
    
    MyMemberModel *model13=[[MyMemberModel alloc]init];
    model13.title=@"13";
    [model.parent addObject:model13];
    
    MyMemberModel *model111=[[MyMemberModel alloc]init];
    model111.title=@"111";
    [model11.parent addObject:model111];
    
    MyMemberModel *model1111=[[MyMemberModel alloc]init];
    model1111.title=@"1111";
    [model111.parent addObject:model1111];
    for(int i=0;i<50;i++)
    {
        MyMemberModel *model11110=[[MyMemberModel alloc]init];
        model11110.title=[NSString stringWithFormat:@"1111%d",i];
        [model1111.parent addObject:model11110];
    }
    
    MyMemberModel *model112=[[MyMemberModel alloc]init];
    model112.title=@"112";
    [model11.parent addObject:model112];
    
//    for (int i=0;i<100;i++) {
//        MyMemberModel *model111=[[MyMemberModel alloc]init];
//        model111.title=[NSString stringWithFormat:@"111%d",i];
//        [model11.children addObject:model111];
//    }
    
    MyMemberModel *model2=[[MyMemberModel alloc]init];
    model2.title=@"2";
    [self.fModel.parent addObject:model2];
    
    MyMemberModel *model21=[[MyMemberModel alloc]init];
    model21.title=@"21";
    [model2.parent addObject:model21];
    
//    for (int i=0;i<5;i++) {
//        MyMemberModel *model111=[[MyMemberModel alloc]init];
//        model111.title=[NSString stringWithFormat:@"2%d",i];
//        [model2.children addObject:model111];
//    }
    
    MyMemberModel *model22=[[MyMemberModel alloc]init];
    model22.title=@"22";
    [model2.parent addObject:model22];
    
    MyMemberModel *model3=[[MyMemberModel alloc]init];
    model3.title=@"3";
    [self.fModel.parent addObject:model3];
    
    MyMemberModel *model4=[[MyMemberModel alloc]init];
    model4.title=@"4";
    [self.fModel.parent addObject:model4];
    
    MyMemberModel *model41=[[MyMemberModel alloc]init];
    model41.title=@"41";
    [model4.parent addObject:model41];

    MyMemberModel *model5=[[MyMemberModel alloc]init];
    model5.title=@"5";
    [self.fModel.parent addObject:model5];
    
    
//    self.fModel.rect=CGRectMake((MainScreenW-HeadWidth)/2, (MainScreenH-HeadHeight-YSpace)/2, self.fModel.parent.count*HeadWidth+(self.fModel.parent.count-1)*XSpace, HeadHeight+YSpace);
    self.view_main.model=self.fModel;
    

    [self updateView:self.fModel];
}

-(void)updateView:(MyMemberModel*)entity
{
    //父辈部分
    float upMaxWidth =[self getWidth:entity isUp:YES];
    NSLog(@"上半部分的宽:%f,%f",upMaxWidth,upMaxWidth/(HeadWidth+XSpace));
    float upHeight = [self getHeight:entity depth:1 isUp:YES];
    NSLog(@"上半部分的高:%f,%f",upHeight,upHeight/(HeadHeight +YSpace));
    
    //同辈部分
    float midWidth=(entity.compeer.count+1)*(HeadWidth+XSpace);//同辈数目 加上 自己的root单元
    
    
    //子辈部分
    float downMaxWidth =[self getWidth:entity isUp:NO];
    NSLog(@"下半部分的宽:%f,%f",downMaxWidth,downMaxWidth/(HeadWidth+XSpace));
    float downHeight = [self getHeight:entity depth:1 isUp:NO];
    NSLog(@"下半部分的高:%f,%f",downHeight,downHeight/(HeadHeight +YSpace));
    
    self.upMaxWidth=upMaxWidth;
    self.downMaxWidth=downMaxWidth;
    self.midMaxWidth=midWidth;
    self.maxWidth=upMaxWidth>downMaxWidth?upMaxWidth:downMaxWidth;//上下部分宽度对比
    self.maxWidth=self.maxWidth>midWidth?self.maxWidth:midWidth;//上下部分中更宽的 跟 中间宽度对比
    self.smallMaxWidth=upMaxWidth>downMaxWidth?downMaxWidth:upMaxWidth;
    self.maxHeight=upHeight+downHeight-HeadHeight-YSpace;
    
    if(self.maxWidth>self.view_main.scrollview.frame.size.width)
    {
        self.view_main.scrollview.contentSize=CGSizeMake(self.maxWidth+2*XSpace, self.view_main.scrollview.contentSize.height);
    }
    if(self.maxHeight>self.view_main.scrollview.frame.size.height)
    {
        self.view_main.scrollview.contentSize=CGSizeMake(self.view_main.scrollview.contentSize.width,self.maxHeight+2*YSpace);
    }
    float x;
    float y;
    if(MainScreenW>self.maxWidth)
    {
        x=(MainScreenW-self.maxWidth)/2;
        
        
//        [self addCell:self.fModel x:(MainScreenW-maxWidth)/2 y:MainScreenH-NavigationHeight-HeadHeight-YSpace];
    }else{
        x=XSpace;
        
        
//       [self addCell:self.fModel x:XSpace y:MainScreenH-NavigationHeight-HeadHeight-YSpace-50];
    }
    if(midWidth>upMaxWidth&&midWidth>downHeight)
    {
        if(self.fModel.compeer.count%2==0)
        {
            if(upMaxWidth>downHeight)
            {
                x+=(midWidth-upMaxWidth)/2;
            }else{
                x+=(midWidth-downHeight)/2;
            }
        }else{
            //奇数个同辈的时候，root单元的左边同辈数量比右边多1个，为了保证整个树状图居中，起点多向右移动半个单元宽度
            if(upMaxWidth>downHeight)
            {
                x+=(midWidth-upMaxWidth)/2+(HeadWidth+XSpace)/2;
            }else{
                x+=(midWidth-downHeight)/2+(HeadWidth+XSpace)/2;
            }
        }
    }
    
    if(MainScreenH-NavigationHeight>self.maxHeight)
    {
        y=(MainScreenH-NavigationHeight-self.maxHeight)/2;
    }else{
        y=upHeight-(HeadHeight+YSpace)/2;
    }
    self.view_main.scrollview.contentOffset=CGPointMake(x+self.maxWidth/2-MainScreenW/2, y-(MainScreenH-NavigationHeight)/2);
    if(midWidth>upMaxWidth&&midWidth>downHeight)
    {
        if(upMaxWidth>downMaxWidth)
        {
            [self addCell:self.fModel x:x y:y];//添加上面分支
            [self addDownCell:self.fModel x:x+self.upMaxWidth/2-downMaxWidth/2 y:y];//添加下面分支,+1是为了不挡住白色横线
        }else{
            [self addCell:self.fModel x:x+self.downMaxWidth/2-upMaxWidth/2 y:y];//添加上面分支
            
            [self addDownCell:self.fModel x:x y:y+1];//添加下面分支,+1是为了不挡住白色横线
        }
        
    }else{
            if(upMaxWidth>downMaxWidth)//如果上面的宽度大于下面的宽度,那就隐藏下面部分的root单元，以上面宽度的X中心坐标+Xspace 作为上下两边root单元的X中心坐标
            {
                
                [self addCell:self.fModel x:x y:y];//添加上面分支
                
                
            
                [self addDownCell:self.fModel x:x+self.maxWidth/2-downMaxWidth/2 y:y];//添加下面分支,+1是为了不挡住白色横线
                
                
        //    [self addDownCell:self.fModel x:x+self.maxWidth/2-downMaxWidth/2 y:y+1+HeadHeight+YSpace];//如果你想看上下两边是怎么拼接的，就解开这个和下面else中的那行。以及注掉 addCell 和 addDownCell中的rectView.hidden=YES;
            }else{
                
                //如果上面的宽度小于下面的宽度,那就隐藏上面部分的root单元，以下面宽度的X中心坐标+XSpace 作为作为上下两边root单元的X中心坐标
                [self addCell:self.fModel x:x+self.maxWidth/2-upMaxWidth/2 y:y];//添加上面分支

                [self addDownCell:self.fModel x:x y:y+1];//添加下面分支,+1是为了不挡住白色横线
                
        //    [self addDownCell:self.fModel x:x y:y+1+HeadHeight+YSpace];//如果你想看上下两边是怎么拼接的，就解开这个和上面if那行。以及注掉 addCell 和 addDownCell中的rectView.hidden=YES;
            }
    }
    if(self.fModel.compeer.count%2==0)
    {
        if(midWidth>upMaxWidth&&midWidth>downHeight)
        {
            [self addCompeerCell:self.fModel x:XSpace y:y];
        }else{
            [self addCompeerCell:self.fModel x:x y:y];
        }
    }else{
        if(midWidth>upMaxWidth&&midWidth>downHeight)
        {
            [self addCompeerCell:self.fModel x:XSpace+(HeadWidth+XSpace)/2 y:y];
        }else{
            [self addCompeerCell:self.fModel x:x y:y];
        }
    }
}

/**
 *  添加上方的基础单元格
 *
 *  @param entity 当前树状图
 *  @param x      左边坐标
 *  @param y      上边坐标
 @  @reture       返回中点X坐标
 */
-(float)addCell:(MyMemberModel*)entity x:(float)x y:(float)y{
//    float height = [self getHeight:entity depth:1];
    float maxwidth =[self getWidth:entity isUp:YES];
    MemberRectView *rectView=[[MemberRectView alloc]initWithMemberModel:entity andIsup:YES];
    rectView.menberView.lb_nick.text=entity.title;
    rectView.frame=CGRectMake(x, y, maxwidth, HeadHeight+YSpace);
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(entity.compeer.count>1)//同辈有 >=2 个时，root单元左右都有短横线
        {
            [rectView createLineLeft:YES Right:YES];//创建root单元的左右长度为 XSpace/2 的短横线
        }else if (entity.compeer.count>0)//同辈只有一个时，只有root单元的左边有短横线
        {
            [rectView createLineLeft:YES Right:NO];//创建root单元的左右长度为 XSpace/2 的短横线
        }
        
        if(self.midMaxWidth>self.upMaxWidth&&self.midMaxWidth>self.downMaxWidth)
        {
            if(self.upMaxWidth>self.downMaxWidth)
            {
                rectView.frame=CGRectMake(x, y, self.upMaxWidth, HeadHeight+YSpace);
            }else{
                rectView.frame=CGRectMake(x, y, self.downMaxWidth, HeadHeight+YSpace);
            }
            
            
        }else{
        rectView.frame=CGRectMake(x, y, self.maxWidth, HeadHeight+YSpace);
        }
    });
    if(self.upMaxWidth<self.downMaxWidth)
    {
        //如果上面的宽度小于下面的宽度,那就隐藏上面部分的root单元，以下面宽度的X中心坐标+XSpace 作为作为上下两边root单元的X中心坐标
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            rectView.hidden=YES;
        });
    }
    if(entity.parent.count<=0)
    {
        rectView.yFromLine.hidden=YES;
    }
    rectView.backgroundColor=[UIColor redColor];
    [self.view_main.scrollview addSubview:rectView];
    
    //添加上分支元素
    float sh = x;
    float topX = 0.0,bottomX = 0.0;
    for (int i= 0 ; i < entity.parent.count ; i++) {
//        float num=y-YSpace-HeadHeight;
        float subcellX = [self addCell:entity.parent[i] x:sh y:y-YSpace-HeadHeight];
        if (i == 0) {
            topX = subcellX;
        }else if(i == entity.parent.count-1){
            bottomX = subcellX;
        }
        
        sh+=[self getWidth:entity.parent[i] isUp:YES];
    }
    
    //画横线

    if (entity.parent.count>1)
    {
        
        View *yBranchLine=[[View alloc]initWithFrame:CGRectMake(topX, y-0.5,bottomX-topX, 1)];
        yBranchLine.backgroundColor=[UIColor blackColor];
        [self.view_main.scrollview addSubview:yBranchLine];
    }
    
//    //添加下面子辈元素
//    float sh2 = x;
//    float topX2 = 0.0,bottomX2 = 0.0;
//    float maxwidth2 =[self getWidth:entity isUp:NO];
////    float x1=sh2-(entity.children.count)*(HeadWidth+XSpace)/2+self.maxWidth/2;
//    float x1=0;
//    float y1=y+YSpace+HeadHeight;
//    
//    if(maxwidth>maxwidth2)
//    {
//        x1=sh2-(entity.children.count)*(HeadWidth+XSpace)/2+maxwidth/2;
//    }else{
//        x1=sh2-(entity.children.count)*(HeadWidth+XSpace)/2+maxwidth2/2;
//    }
//    NSLog(@"x%f  y%f",x1,y1);
//    for (int i= 0 ; i < entity.children.count ; i++) {
//        //        float num=y-YSpace-HeadHeight;
//        
//        float subcellX2 = [self addCell:entity.children[i] x:x1 y:y+YSpace+HeadHeight];
//        if (i == 0) {
//            topX2 = subcellX2;
//        }else if(i == entity.children.count-1){
//            bottomX2 = subcellX2;
//        }
//        
//        sh2+=[self getWidth:entity.children[i] isUp:NO];
//    }
//
//    //画横线
//    
//    if (entity.children.count>1)
//    {
//        
//        View *yBranchLine=[[View alloc]initWithFrame:CGRectMake(topX2, y+HeadHeight+YSpace-0.5,bottomX2-topX2, 1)];
//        yBranchLine.backgroundColor=GrayLineColor;
//        [self.view_main.scrollview addSubview:yBranchLine];
//    }
    
    return maxwidth/2+x;
}


/**
 *  添加下方的基础单元格
 *
 *  @param entity 当前基础单元格
 *  @param x      左边坐标
 *  @param y      上边坐标
 @  @reture       返回中点X坐标
 */
-(float)addDownCell:(MyMemberModel*)entity x:(float)x y:(float)y{
    float maxwidth =[self getWidth:entity isUp:NO];
    MemberRectView *rectView=[[MemberRectView alloc]initWithMemberModel:entity andIsup:NO];
    rectView.menberView.lb_nick.text=entity.title;
    
    rectView.frame=CGRectMake(x, y, maxwidth, HeadHeight+YSpace);
    rectView.backgroundColor=[UIColor redColor];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(entity.compeer.count>1)
        {
            [rectView createLineLeft:YES Right:YES];//创建root单元的左右长度为 XSpace/2 的短横线
        }else if (entity.compeer.count>0)
        {
            [rectView createLineLeft:YES Right:NO];//创建root单元的左右长度为 XSpace/2 的短横线
        }
    });
    
    [self.view_main.scrollview addSubview:rectView];
    if(self.upMaxWidth>self.downMaxWidth)
    {
        //如果上面的宽度大于下面的宽度,那就隐藏下面部分的root单元，以上面宽度的X中心坐标+Xspace 作为上下两边root单元的X中心坐标
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        rectView.hidden=YES;
    });
    }
    //添加下分支元素
    float sh = x;
    float topX = 0.0,bottomX = 0.0;
    for (int i= 0 ; i < entity.children.count ; i++) {
        //        float num=y-YSpace-HeadHeight;
        float subcellX = [self addDownCell:entity.children[i] x:sh y:y+YSpace+HeadHeight];
        if (i == 0) {
            topX = subcellX;
        }else if(i == entity.children.count-1){
            bottomX = subcellX;
        }
        
        sh+=[self getWidth:entity.children[i] isUp:NO];
    }
    
    //画横线
    
    if (entity.parent.count>1)
    {
        
        View *yBranchLine=[[View alloc]initWithFrame:CGRectMake(topX, y+HeadHeight+YSpace-0.5,bottomX-topX, 1)];
        yBranchLine.backgroundColor=[UIColor blackColor];
        [self.view_main.scrollview addSubview:yBranchLine];
    }

    
    return maxwidth/2+x;
    
}

-(void)addCompeerCell:(MyMemberModel*)entity x:(float)x y:(float)y
{
    float midx=x+self.maxWidth/2;
    
        //加左边那一半同辈
        for(int i=0;i<entity.compeer.count;i++)
        {
            float leftX=0;
            MemberRectView *rectView;
            if(i==0)
            {
                rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:NO andIsRight:YES];
            }else if(i==entity.compeer.count-1)
            {
                rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:YES andIsRight:NO];
            }else{
                rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:YES andIsRight:YES];
            }
            if(entity.compeer.count%2==0)
            {
                if(i<(entity.compeer.count/2))
                {
                    leftX=midx-(HeadWidth+XSpace)/2-(entity.compeer.count/2-i)*(HeadWidth+XSpace);
//                    rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:YES andIsRight:NO];
                }else{
                    leftX=midx+(HeadWidth+XSpace)/2+(i-entity.compeer.count/2)*(HeadWidth+XSpace);
//                    rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:NO andIsRight:YES];
                }
            }else{
                if(i<((entity.compeer.count+1)/2))
                {
                    leftX=midx-(HeadWidth+XSpace)/2-((entity.compeer.count+1)/2-i)*(HeadWidth+XSpace);
                    
//                    rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:YES andIsRight:NO];
                }else{
                    leftX=midx+(HeadWidth+XSpace)/2+(i-(entity.compeer.count+1)/2)*(HeadWidth+XSpace);
//                    rectView=[[MemberRectView alloc]initWithMemberModel:entity.compeer[i] andIsLeft:NO andIsRight:YES];
                }
            }
            
            rectView.frame=CGRectMake(leftX, y+0.5, HeadWidth+XSpace, HeadHeight+YSpace-1);
            rectView.yFromLine.hidden=YES;
            rectView.yBottomLine.hidden=YES;
            rectView.backgroundColor=[UIColor clearColor];
//            rectView.backgroundColor=[UIColor redColor];
            [self.view_main.scrollview addSubview:rectView];
            
        }
        
    
    
}

/**
 *  计算最大宽度
 *
 *  @param entity 当前基础单元
 *  @param isUp   是否是上方的基础单元
 *
 *  @return 最高处的高度
 */
-(float)getWidth:(MyMemberModel *)entity isUp:(BOOL)isUp{
    if(isUp==YES)
    {
        int width = 0;
        for (int i= 0 ; i < entity.parent.count ; i++) {
            width+=[self getWidth:entity.parent[i] isUp:isUp];
        }
        return width?width:(HeadWidth + XSpace);
    }
    
    int width = 0;
    for (int i= 0 ; i < entity.children.count ; i++) {
        width+=[self getWidth:entity.children[i] isUp:isUp];
    }
    return width?width:(HeadWidth + XSpace);
    
}

/**
 *  获取高度
 *
 *  @param entity 当前树状图
 *  @param isUp   是否是上方的基础单元 
 *  @param v      当前节点深度 1开始
 *
 *  @return 最深的深度
 */
-(float)getHeight:(MyMemberModel *)entity depth:(int)v isUp:(BOOL)isUp{
    if(isUp==YES)
    {
        int maxHeight = v*(HeadHeight+YSpace);
        for (int i= 0 ; i < entity.parent.count ; i++) {
            float mw = [self getHeight:entity.parent[i] depth:v+1 isUp:isUp];
            if (mw>maxHeight) {
                maxHeight = mw;
            }
        }
        return maxHeight?maxHeight:(HeadHeight+YSpace);
    }
    int maxHeight = v*(HeadHeight+YSpace);
    for (int i= 0 ; i < entity.children.count ; i++) {
        float mw = [self getHeight:entity.children[i] depth:v+1 isUp:isUp];
        if (mw>maxHeight) {
            maxHeight = mw;
        }
    }
    return maxHeight?maxHeight:(HeadHeight+YSpace);
}



- (MyFamilyView *)view_main {
	if (_view_main == nil) {
        _view_main = [[MyFamilyView alloc] initWithFrame:CGRectMake(0, NavigationHeight, MainScreenW, MainScreenH-NavigationHeight)];
        
	}
	return _view_main;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
