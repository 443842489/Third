//
//  MyMemberModel.m
//  smarket
//
//  Created by ym on 17/5/9.
//  Copyright © 2017年 飞扬软件. All rights reserved.
//

#import "MyMemberModel.h"

@implementation MyMemberModel

- (NSMutableArray<MyMemberModel *>*)children {
	if (_children == nil) {
        _children = [[NSMutableArray alloc] init];
	}
	return _children;
}

- (NSMutableArray<MyMemberModel *>*)parent {
    if (_parent == nil) {
        _parent = [[NSMutableArray alloc] init];
    }
    return _parent;
}

- (NSMutableArray<MyMemberModel *>*)compeer {
    if (_compeer == nil) {
        _compeer = [[NSMutableArray alloc] init];
    }
    return _compeer;
}
@end
