//
//  Header.h
//  smarket
//
//  Created by che on 17/1/2.
//  Copyright © 2017年 tlg. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CellDelegate <NSObject>

-(void)controlClickWithTag:(NSInteger)tag index:(NSIndexPath *)indexPath;

@end
