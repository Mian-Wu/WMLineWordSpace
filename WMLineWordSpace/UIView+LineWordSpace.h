//
//  UIView+LineWordSpace.h
//  WMLineWordSpace
//
//  Created by 吴冕 on 2019/4/11.
//  Copyright © 2019 wumian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (LineWordSpace)

/**
 *  改变行间距(支持UILabel、UITextView、UITextField)
 *
 *  @param lineSpace  行间距
 *  @param textStr  文字内容
 */
- (void)changeLineSpace:(float)lineSpace addTextStr:(NSString *)textStr;

/**
 *  改变字间距
 *
 *  @param wordSpace  字间距
 *  @param textStr  文字内容
 */
- (void)changeWordSpace:(float)wordSpace addTextStr:(NSString *)textStr;

/**
 *  改变行字间距
 *
 *  @param lineSpace  行间距
 *  @param wordSpace  字间距
 *  @param textStr  文字内容
 */
- (void)changeLineSpace:(float)lineSpace addWordSpace:(float)wordSpace addTextStr:(NSString *)textStr;

@end

NS_ASSUME_NONNULL_END
