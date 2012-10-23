//
//  BIDViewController.m
//  ShowHide
//
//  Created by Laïla Atrmouh on 23/10/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController
@synthesize cat;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCat:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction) show:(id)sender {
    cat.hidden = NO;
}

- (IBAction) hide:(id)sender {
    cat.hidden = YES;
}



@end
