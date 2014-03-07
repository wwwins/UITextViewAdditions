//
//  UITextView+UITextViewAdditions.h
//  TextDemo
//
//  Created by wwwins on 2014/3/7.
//  Copyright (c) 2014年 wwwins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (UITextViewAdditions)

- (CGFloat)measureHeightOfUITextView;

- (void)styleTextView:(NSString *)content showingAll:(BOOL)showingAll fontSize:(float)fontSize lineSpacing:(float)lineSpacing;

- (void)styleTextViewWithShowingAll:(NSString *)content lineSpacing:(float)lineSpacing;

- (void)styleTextViewWithScroll:(NSString *)content lineSpacing:(float)lineSpacing;


@end
