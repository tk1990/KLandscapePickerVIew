//
//  ViewController.m
//  KLandscapePickerVIew
//
//  Created by 佟堃 on 14/12/19.
//  Copyright (c) 2014年 . All rights reserved.
//

#import "ViewController.h"
#import "KLandscapePickerView.h"
@interface ViewController ()<KLanscapePickerViewDataSource, KLanscapePickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    KLandscapePickerView *pickerView = [[KLandscapePickerView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 74 * 3)];
    pickerView.dataSource = self;
    pickerView.delegate = self;
    [pickerView initLandscapePickerView];
    [self.view addSubview:pickerView];
    
}

- (NSInteger)numberOfRowInPickerView:(KLandscapePickerView *)pickerView{
    return 3;
}

- (NSInteger)numberOfColumnInPickerView:(KLandscapePickerView *)pickerView row:(NSInteger)row{
    if (row == 0) {
        return 4;
    }else if (row == 1) {
        return 5;
    }else{
        return 6;
    }
}

- (NSArray *)titleOfColumnInPickerView:(KLandscapePickerView *)pickerView row:(NSInteger)row{
    if (row == 0) {
        return [NSArray arrayWithObjects:@"面积不限",@"50平米以下",@"50-70平米",@"70-90平米",@"90-110平米",@"110-130平米",@"130-150平米",@"150-200平米",@"200-300平米",@"300平米以上", nil];
    }else if (row == 0) {
        return  [NSArray arrayWithObjects:@"不限", @"不限购",@"低总价",@"复式",@"LOFT",@"小户型",@"地铁房",@"学区房",@"商住两用",@"满五年",@"唯一住房",@"婚房",@"满五唯一",nil];
    }else {
        return @[ @"默认排序", @"价格由高到低", @"价格由低到高", @"面积由大到小", @"面积由小到大", @"更新时间"];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
