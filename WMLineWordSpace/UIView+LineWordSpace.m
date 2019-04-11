//
//  UIView+LineWordSpace.m
//  WMLineWordSpace
//
//  Created by 吴冕 on 2019/4/11.
//  Copyright © 2019 wumian. All rights reserved.
//

#import "UIView+LineWordSpace.h"

@implementation UIView (LineWordSpace)

/**
 *  改变行间距
 *
 *  @param lineSpace  行间距
 *  @param textStr  文字内容
 */
- (void)changeLineSpace:(float)lineSpace addTextStr:(NSString *)textStr{
    if ([self isKindOfClass:[UILabel class]]) {
        UILabel *tempLabel = (UILabel *)self;
        tempLabel.text = textStr;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempLabel.attributedText];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpace - (tempLabel.font.lineHeight - tempLabel.font.pointSize);
        paragraphStyle.alignment = tempLabel.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempLabel.text.length)];
        tempLabel.attributedText = attributedString;
    }else if ([self isKindOfClass:[UITextView class]]){
        UITextView *tempTextView = (UITextView *)self;
        tempTextView.text = textStr;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempTextView.attributedText];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpace - (tempTextView.font.lineHeight - tempTextView.font.pointSize);
        paragraphStyle.alignment = tempTextView.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempTextView.text.length)];
        tempTextView.attributedText = attributedString;
    }else if ([self isKindOfClass:[UITextField class]]){
        UITextField *tempTextField = (UITextField *)self;
        tempTextField.text = textStr;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempTextField.attributedText];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpace - (tempTextField.font.lineHeight - tempTextField.font.pointSize);
        paragraphStyle.alignment = tempTextField.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempTextField.text.length)];
        tempTextField.attributedText = attributedString;
    }
}

/**
 *  改变字间距
 *
 *  @param wordSpace  字间距
 *  @param textStr  文字内容
 */
- (void)changeWordSpace:(float)wordSpace addTextStr:(NSString *)textStr{
    if ([self isKindOfClass:[UILabel class]]) {
        UILabel *tempLabel = (UILabel *)self;
        tempLabel.text = textStr;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempLabel.attributedText];
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, tempLabel.text.length)];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = tempLabel.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempLabel.text.length)];
        tempLabel.attributedText = attributedString;
    }else if ([self isKindOfClass:[UITextView class]]){
        UITextView *tempTextView = (UITextView *)self;
        tempTextView.text = textStr;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempTextView.attributedText];
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, tempTextView.text.length)];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = tempTextView.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempTextView.text.length)];
        tempTextView.attributedText = attributedString;
    }else if ([self isKindOfClass:[UITextField class]]){
        UITextField *tempTextField = (UITextField *)self;
        tempTextField.text = textStr;
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempTextField.attributedText];
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, tempTextField.text.length)];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.alignment = tempTextField.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempTextField.text.length)];
        tempTextField.attributedText = attributedString;
    }
}

/**
 *  改变行字间距
 *
 *  @param lineSpace  行间距
 *  @param wordSpace  字间距
 *  @param textStr  文字内容
 */
- (void)changeLineSpace:(float)lineSpace addWordSpace:(float)wordSpace addTextStr:(NSString *)textStr{
    if ([self isKindOfClass:[UILabel class]]) {
        UILabel *tempLabel = (UILabel *)self;
        tempLabel.text = textStr;
        // 字间距
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempLabel.attributedText];
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, tempLabel.text.length)];
        // 行间距
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpace - (tempLabel.font.lineHeight - tempLabel.font.pointSize);
        paragraphStyle.alignment = tempLabel.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempLabel.text.length)];
        tempLabel.attributedText = attributedString;
    }else if ([self isKindOfClass:[UITextView class]]){
        UITextView *tempTextView = (UITextView *)self;
        tempTextView.text = textStr;
        // 字间距
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempTextView.attributedText];
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, tempTextView.text.length)];
        // 行间距
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpace - (tempTextView.font.lineHeight - tempTextView.font.pointSize);
        paragraphStyle.alignment = tempTextView.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempTextView.text.length)];
        tempTextView.attributedText = attributedString;
    }else if ([self isKindOfClass:[UITextField class]]){
        UITextField *tempTextField = (UITextField *)self;
        tempTextField.text = textStr;
        // 字间距
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:tempTextField.attributedText];
        [attributedString addAttribute:NSKernAttributeName value:@(wordSpace) range:NSMakeRange(0, tempTextField.text.length)];
        // 行间距
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpace - (tempTextField.font.lineHeight - tempTextField.font.pointSize);
        paragraphStyle.alignment = tempTextField.textAlignment;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, tempTextField.text.length)];
        tempTextField.attributedText = attributedString;
    }
}

@end
