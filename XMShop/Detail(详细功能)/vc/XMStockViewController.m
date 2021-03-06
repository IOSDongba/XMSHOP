//
//  XMStockViewController.m
//  XMShop
//
//  Created by apple on 2018/3/9.
//  Copyright © 2018年 RM. All rights reserved.
//

#import "XMStockViewController.h"
#import "XMGoodCell.h"
#import "XMDetailPopview.h"
@interface XMStockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation XMStockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    XMGoodCell *cell = [XMGoodCell dc_viewFromXib];
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *header = [UIView new];
    header.frame = CGRectMake(0, 0, ScreenW, 30);
    
    
    FTLabel *label = [FTLabel  getLabelWithText:@"水产" textColor:HEXCOLOR(0x6c6c6c) fontSize:14 frame:CGRectMake(16, 0, ScreenW, 30)];
    [header addSubview:label];
    return header;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    UIView *view = [UIView new];
//    view.frame = self.view.frame;
//    view.backgroundColor = [UIColor darkGrayColor];
//    view.alpha = 0.9;
//    [self.view addSubview:view];
    
    XMDetailPopview *popview = [XMDetailPopview dc_viewFromXib];
    popview.width = ScreenW;
    [popview sizeToFit];
    popview.y = self.view.height;
    popview.y = self.view.height - popview.height;
    popview.userInteractionEnabled = YES;
    [self.view popview:popview];
}







@end
