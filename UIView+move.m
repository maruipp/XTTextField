//
//  UIView+move.m
//  youche
//
//  Created by 马 瑞鹏 on 14-4-17.
//  Copyright (c) 2014年 YintaiYouChe. All rights reserved.
//

#import "UIView+move.h"
//#import "AYBGlobalCoreRect.h"
@implementation UIView (move)
- (void)verticalMove:(int)offset animate:(BOOL)animated
{
    if (animated) {
        [UIView beginAnimations:@"up" context:nil];
        [UIView setAnimationDuration:0.2];
//        self.frame = AYBRectShift(self.frame, 0, offset);
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + offset, self.frame.size.width, self.frame.size.height);
        [UIView commitAnimations];
    }else{
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + offset, self.frame.size.width, self.frame.size.height);
//        self.frame = AYBRectShift(self.frame, 0, offset);
    }
    
}

- (void)horizonMove:(int)offset  animate:(BOOL)animated
{
    if (animated) {
        [UIView beginAnimations:@"up" context:nil];
        [UIView setAnimationDuration:0.2];
        self.frame = CGRectMake(self.frame.origin.x + offset, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
        [UIView commitAnimations];
    }else{
        self.frame = CGRectMake(self.frame.origin.x + offset, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
    }
    
}

- (void)moveTo:(CGPoint)position animate:(BOOL)animated
{
    if (animated) {
        [UIView beginAnimations:@"up" context:nil];
        [UIView setAnimationDuration:0.2];
        self.frame = CGRectMake(position.x,position.y, self.frame.size.width, self.frame.size.height);
//        self.frame = AYBRectMove(self.frame, position.x, position.y);
        [UIView commitAnimations];
    }else{
//        self.frame = AYBRectMove(self.frame, position.x, position.y);
        self.frame = CGRectMake(position.x,position.y, self.frame.size.width, self.frame.size.height);
    }
//    CLog(@"moveto:%@",NSStringFromCGRect(self.frame));
}
@end
