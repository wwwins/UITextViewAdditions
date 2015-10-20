//
//  UITextView+UITextViewAdditions.m
//  TextDemo
//
//  Created by wwwins on 2014/3/7.
//  Copyright (c) 2014年 wwwins. All rights reserved.
//

#import "UITextView+UITextViewAdditions.h"

#define LINE_SPACE (5.f)

@implementation UITextView (UITextViewAdditions)

- (void)addText:(NSString *)text textStyle:(NSString *)textStyle fontColor:(UIColor *)fontColor lineSpacing:(float)lineSpacing backgroundColor:(UIColor *)backgroundColor
{
  UIFont *font = (textStyle.length > 0) ? [UIFont preferredFontForTextStyle:textStyle] : [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  UIColor *foregroundColor = fontColor ? fontColor : [UIColor darkTextColor];
  UIColor *color = backgroundColor ? backgroundColor : [UIColor whiteColor];

  NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
  style.lineSpacing = (lineSpacing>0 ? lineSpacing : LINE_SPACE);

  NSDictionary *attributes = @{
                               NSParagraphStyleAttributeName : style,
                               NSForegroundColorAttributeName: foregroundColor,
                               NSBackgroundColorAttributeName: color,
                               NSFontAttributeName: font
                               };

  NSMutableAttributedString *attributedString = [self.attributedText mutableCopy];
  [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:text attributes:attributes]];

  self.attributedText = attributedString;
}

- (void)addBody:(NSString *)body
{
  [self addText:body textStyle:UIFontTextStyleBody fontColor:[UIColor darkTextColor] lineSpacing:LINE_SPACE backgroundColor:nil];
}

- (void)addTitle:(NSString *)title
{
  [self addText:title textStyle:UIFontTextStyleHeadline fontColor:[UIColor darkTextColor] lineSpacing:LINE_SPACE backgroundColor:nil];
}

- (void)addTitle:(NSString *)title backgroundColor:(UIColor *)backgroundColor
{
  [self addText:title textStyle:UIFontTextStyleHeadline fontColor:[UIColor darkTextColor] lineSpacing:LINE_SPACE backgroundColor:backgroundColor];
}

- (void)addSubTitle:(NSString *)subtitle
{
  [self addText:subtitle textStyle:UIFontTextStyleSubheadline fontColor:[UIColor darkTextColor] lineSpacing:LINE_SPACE backgroundColor:nil];
}

- (void)addSubTitle:(NSString *)subtitle backgroundColor:(UIColor *)backgroundColor
{
  [self addText:subtitle textStyle:UIFontTextStyleSubheadline fontColor:[UIColor darkTextColor] lineSpacing:LINE_SPACE backgroundColor:backgroundColor];
}

- (void)addLineSpace
{
  [self addText:@"\n" textStyle:nil fontColor:nil lineSpacing:0 backgroundColor:nil];
}

- (void)addImage:(UIImage *)image
{
  NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
  attachment.image = image;
  attachment.bounds = CGRectMake(0, 0, image.size.width, image.size.height);
  NSDictionary *attributes = @{
                               NSAttachmentAttributeName:attachment
                              };
  NSMutableAttributedString *attributedString = [self.attributedText mutableCopy];
  [attributedString appendAttributedString:[NSAttributedString attributedStringWithAttachment:attachment]];
  self.attributedText = attributedString;
}


@end
