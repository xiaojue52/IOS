//
//  RootController.m
//  TestBaiduMap
//
//  Created by wu on 1/12/14.
//  Copyright (c) 2014 wu. All rights reserved.
//

#import "RootController.h"
#import "ViewController.h"

@interface RootController ()

@end

@implementation RootController
{
    NSMutableArray* array;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    array = [[NSMutableArray alloc]initWithObjects:@"show map",@"test1",@"test2", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return array.count;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"resused"];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]init];
    }
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    int i = indexPath.row;
    NSLog(@"%d",i);
    if (indexPath.row==0){
        NSLog(@"test");
        ViewController *viewController = [[ViewController alloc]init];
        viewController.title = @"Map";
        [self.navigationController pushViewController:viewController animated:YES];
    }
}
@end
