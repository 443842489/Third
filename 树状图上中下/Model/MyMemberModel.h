//
//  MyMemberModel.h
//  smarket
//
//  Created by ym on 17/5/9.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

//#import "BaseModel.h"
#import <Foundation/Foundation.h>
@interface MyMemberModel : NSObject
@property(nonatomic,strong)NSString* title;
@property(nonatomic,strong)NSMutableArray<MyMemberModel *>* parent;//父辈
@property(nonatomic,strong)NSMutableArray<MyMemberModel *>* compeer;//同辈;
@property(nonatomic,strong)NSMutableArray<MyMemberModel *>* children;//字辈


@end
