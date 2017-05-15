//
//  CellSetDataCelegate.h
//  smarket
//
//  Created by che on 17/3/21.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CellSetDataDelegate <NSObject>

-(void)setDatasWithModel:(id)model index:(NSIndexPath *)indexPath;

@end
