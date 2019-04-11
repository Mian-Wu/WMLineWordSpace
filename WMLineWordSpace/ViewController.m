//
//  ViewController.m
//  WMLineWordSpace
//
//  Created by apple on 2019/4/10.
//  Copyright © 2019年 wumian. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LineWordSpace.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // UITextView和UILabel
//    {
        UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 200, 200)];
        tempLabel.backgroundColor = [UIColor redColor];
        tempLabel.textAlignment = NSTextAlignmentCenter;
        tempLabel.textColor = [UIColor blackColor];
        tempLabel.font = [UIFont systemFontOfSize:18];
        tempLabel.numberOfLines = 0;
//        [tempLabel changeLineSpace:15 addWordSpace:5 addTextStr:@"测试的Label,测试的Label,测试的Label,测试的Label"];
//    [tempLabel changeWordSpace:5 addTextStr:@"测试的Label,测试的Label,测试的Label,测试的Label"];
    [tempLabel changeLineSpace:15 addTextStr:@"测试的Label,测试的Label,测试的Label,测试的Label"];
        [self.view addSubview:tempLabel];
//    }
//    {
//        UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 100, 200, 200)];
//        textView.backgroundColor = [UIColor redColor];
//        [textView changeLineSpace:10 addTextStr:@"测试的textView,测试的textView,测试的textView,测试的textView"];
//        textView.textAlignment = NSTextAlignmentCenter;
//        textView.textColor = [UIColor blackColor];
//        textView.font = [UIFont systemFontOfSize:18];
//        [self.view addSubview:textView];
//    }
    
//    {
//        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 200, 200)];
//        textField.backgroundColor = [UIColor redColor];
//        [textField changeWordSpace:5 addTextStr:@"测试的textField,测试的textField,测试的textField,测试的textField"];
//        textField.textAlignment = NSTextAlignmentCenter;
//        textField.textColor = [UIColor blackColor];
//        textField.font = [UIFont systemFontOfSize:18];
//        [self.view addSubview:textField];
//    }
    
}


@end
