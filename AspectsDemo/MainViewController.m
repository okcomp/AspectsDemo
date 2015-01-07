//
//  ViewController.m
//  Test
//
//  Created by Peng Gu on 11/24/14.
//  Copyright (c) 2014 Peng Gu. All rights reserved.
//

#import "MainViewController.h"
#import <Aspects.h>
#import "CustomCell.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UIView *headerView;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end


@implementation MainViewController

#define PAGE_IMP_HEALTH @"page imp - health profile"
#define BTN_CLK_HELP_EXPORT @"button click - export report"

- (void)viewDidLoad
{
    [super viewDidLoad];

//    self.tableView.clipsToBounds = NO;
    self.tableView.contentInset = UIEdgeInsetsMake(300, 0, 0, 0);

//    [self aspect_hookSelector:@selector(viewDidAppear:)
//                  withOptions:AspectPositionAfter
//                   usingBlock:^(id<AspectInfo> aspectInfo){
//                       NSLog(@"view did appear: %@", aspectInfo);
//                   }
//                        error:NULL];
//    
//    [self aspect_hookSelector:@selector(buttonClicked:)
//                  withOptions:AspectPositionAfter
//                   usingBlock:^(id<AspectInfo> aspectInfo, id sender) {
//                       NSLog(@"button clicked: %@ \n %@", aspectInfo, sender);
//                   }
//                        error:NULL];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellReuseIdentifier"
                                                            forIndexPath:indexPath];
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
    cell.containerView.backgroundColor = color;
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld %ld", indexPath.section, indexPath.row];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}


- (IBAction)buttonOneClicked:(id)sender
{
    
}


- (IBAction)buttonTwoClicked:(id)sender
{
    
}


- (IBAction)buttonClicked:(id)sender
{
//    NSLog(@"Button %ld Clicked", [sender tag]);
}





@end
