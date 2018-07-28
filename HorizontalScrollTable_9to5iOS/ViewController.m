//
//  ViewController.m
//  HorizontalScrollTable_9to5iOS
//
//  Created by admin on 28/07/18.
//  Copyright © 2018 admin. All rights reserved.
//

#import "ViewController.h"
#import "HorizontalScrollCell.h"

@interface ViewController ()
{
    NSArray* arr_categoryNames ;

}
@end

@implementation ViewController

- (void)viewDidLoad {
 
    arr_categoryNames=[NSArray arrayWithObjects:@"Popular Games",@"Latest Games",@"Trending Now", @"Apps we love", @"ChildHood Games",@"Logical Games",nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"HorizontalScrollCell";
    
    HorizontalScrollCell *cell = (HorizontalScrollCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return [arr_categoryNames count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return [arr_categoryNames objectAtIndex:section];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
