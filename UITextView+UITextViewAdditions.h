//
//  UITextView+UITextViewAdditions.h
//  TextDemo
//
//  Created by wwwins on 2014/3/7.
//  Copyright (c) 2014年 wwwins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (UITextViewAdditions)

- (void)addText:(NSString *)text textStyle:(NSString *)textStyle fontColor:(UIColor *)fontColor lineSpacing:(float)lineSpacing backgroundColor:(UIColor *)backgroundColor;

- (void)addBody:(NSString *)body;

- (void)addTitle:(NSString *)title;

- (void)addTitle:(NSString *)title backgroundColor:(UIColor *)backgroundColor;

- (void)addSubTitle:(NSString *)subtitle;

- (void)addSubTitle:(NSString *)subtitle backgroundColor:(UIColor *)backgroundColor;

- (void)addLineSpace;

- (void)addImage:(UIImage *)image;

@end
