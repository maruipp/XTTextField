//
//  AutoTextField.m
//  paobuba
//
//  Created by 马 瑞鹏 on 14-6-22.
//  Copyright (c) 2014年 爱叽歪工作室. All rights reserved.
//

#import "AutoTextField.h"
#import "UIView+move.h"
#import "AppDelegate.h"
#define KEY_WINDOW [UIApplication sharedApplication].keyWindow
#define MAGIN_TO_KEYBOARD 20
@implementation AutoTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
        
    }
    return self;
}

- (void)setMasterView:(UIView *)masterView
{
    if (_masterView) {
        _masterView = nil;
    }
    _masterView = masterView;
    
    self.originMasterFrame = _masterView.frame;
}
- (void)awakeFromNib
{
    [self setup];
}

- (void)setup
{
    [self registerNotifications];
}

- (void)dealloc
{
    [self removeNotifications];
}

#pragma mark - 键盘消息
- (void)registerNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoradWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoradWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoradFrameWillChange:) name:UIKeyboardWillChangeFrameNotification object:nil];
}
- (void)removeNotifications
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)keyBoradFrameWillChange:(NSNotification *)noti
{
    
    NSDictionary *userInfo = noti.userInfo;
    NSValue* aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [aValue CGRectValue];
//    keyboardRect = [_masterView convertRect:keyboardRect fromView:nil];
    CGFloat keyboardTop = keyboardRect.origin.y;
    
    CGRect selfFrameInWindow = [self.superview convertRect:self.frame toView:KEY_WINDOW];
    int offset = keyboardTop - (selfFrameInWindow.origin.y + selfFrameInWindow.size.height) - MAGIN_TO_KEYBOARD;
    if (offset < 0) {
        [_masterView verticalMove:offset animate:YES];
    }
}
- (void)keyBoradWillShow:(NSNotification *)noti
{

}

- (void)keyBoradWillHide:(NSNotification *)noti
{
    [self moveMasterViewToOrigin];
}

- (void)moveMasterViewToOrigin
{
    [_masterView moveTo:_originMasterFrame.origin animate:YES];
}
@end
