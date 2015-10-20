//
//  UITextView+UITextViewAdditions.m
//  TextDemo
//
//  Created by wwwins on 2014/3/7.
//  Copyright (c) 2014年 wwwins. All rights reserved.
//

#import "UITextView+UITextViewAdditions.h"

#define LINE_HEIGHT (25.f)

@implementation UITextView (UITextViewAdditions)

- (CGFloat)measureHeightOfUITextView
{
  return [self sizeThatFits:CGSizeMake(self.frame.size.width, FLT_MAX)].height;
}

- (void)styleTextView:(NSString *)content showingAll:(BOOL)showingAll fontSize:(float)fontSize lineSpacing:(float)lineSpacing
{
  if (showingAll) {
    // disable scrolling
    [self setScrollEnabled:NO];
  }
  
  // adjust lineSpacing
  NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
  
  float mylineSpacing = (lineSpacing>0 ? lineSpacing : LINE_HEIGHT);
  float myfontSize = (fontSize>0 ? fontSize : [UIFont systemFontSize]);
  
  style.minimumLineHeight = mylineSpacing;
  style.maximumLineHeight = mylineSpacing;
  style.lineHeightMultiple = mylineSpacing;
 
  NSDictionary *attributes = @{
                               NSParagraphStyleAttributeName : style,
                               };

  [self setAttributedText:[[NSAttributedString alloc] initWithString:content attributes:attributes]];
  
  // fixed: font-size not working in ios6
  [self setEditable:YES];
  [self setFont:[UIFont fontWithName:@"Helvetica" size:myfontSize]];
  [self setEditable:NO];
  
  if (showingAll) {
    CGRect frame = self.frame;
    frame.size.height = [self measureHeightOfUITextView] + myfontSize;
    [self setFrame:frame];
  }
}

- (void)styleTextViewWithShowingAll:(NSString *)content lineSpacing:(float)lineSpacing
{
  [self styleTextView:content showingAll:YES fontSize:0 lineSpacing:lineSpacing];
}

- (void)styleTextViewWithScroll:(NSString *)content lineSpacing:(float)lineSpacing
{
  [self styleTextView:content showingAll:NO fontSize:0 lineSpacing:lineSpacing];
}

@end
