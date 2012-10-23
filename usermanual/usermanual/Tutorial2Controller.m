//
//  Tutorial2Controller.m
//  usermanual
//
//  Created by Laïla Atrmouh on 23/10/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import "Tutorial2Controller.h"

@interface Tutorial2Controller ()

@end

@implementation Tutorial2Controller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Handler on the "Back to Main View" Button -> Returns to the list of tutorials
- (IBAction) backToMainView {
    [self.view removeFromSuperview];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
