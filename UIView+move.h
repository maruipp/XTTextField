//
//  UIView+move.h
//  youche
//
//  Created by 马 瑞鹏 on 14-4-17.
//  Copyright (c) 2014年 YintaiYouChe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (move)
- (void)verticalMove:(int)offset animate:(BOOL)animated;
- (void)horizonMove:(int)offset  animate:(BOOL)animated;
- (void)moveTo:(CGPoint)position animate:(BOOL)animated;
@end
