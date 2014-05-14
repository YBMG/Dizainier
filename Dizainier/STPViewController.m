//
//  STPViewController.m
//  Dizainier
//
//  Created by Nanook on 14/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import "STPViewController.h"

@interface STPViewController ()

@end

@implementation STPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    total = 0;
    [self updateInterface];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tenChange:(id)sender {
    total = [_tenSegment selectedSegmentIndex] * 10 + [_unitSegment selectedSegmentIndex];
    [self updateInterface];
}

- (void)updateInterface {
    [_totalLabel setText:[NSString stringWithFormat: @"%d", total]];
    if(total == 42){
        [_totalLabel setTextColor:[UIColor redColor]];
    } else {
        [_totalLabel setTextColor:[UIColor blackColor]];
    }
}


@end
