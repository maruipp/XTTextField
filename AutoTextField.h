//
//  AutoTextField.h
//
//
//  Created by 马 瑞鹏 on 14-6-22.
//  Copyright (c) 2014年 xuetangX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoTextField : UITextField
@property (nonatomic,strong) UIView *masterView;//textfield跟随其移动的视图

@property (nonatomic,assign) CGRect originMasterFrame;//
@end
