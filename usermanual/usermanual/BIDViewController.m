//
//  BIDViewController.m
//  usermanual
//
//  Created by Laïla Atrmouh on 23/10/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()
 
@end

@implementation BIDViewController
@synthesize tutorialsList;
@synthesize tuto1Controller;
@synthesize tuto2Controller;

/**
 * Initializing the variables of the application
 */
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib. 
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"1 - Setting up environment", @"2 - Your first app", @"3 - User Interface Fun", nil];
    self.tutorialsList = array;
}

/*
 * Setting free the resources allowed for the application
 */
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.tutorialsList = nil;
} 


#pragma mark -
#pragma mark Table View Data Source Methods

/*
 * Returns the number of rows in the table list
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return [self.tutorialsList count];
}

/*
 * Setting the title of the group header
 */
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Tutorials";
}


/*
 * Setting the title of the group header
 */
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"(c) Laila Atrmouh - URI/UTC";
}

/**
 * Setitng the subtitles values for each cell of the table list
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableIdentifier = @"Kikoo";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:SimpleTableIdentifier];
    }
    UIImage *image = [UIImage imageNamed:@"puce.gif"];
    cell.imageView.image = image;
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [tutorialsList objectAtIndex:row];
    switch ( row ) {
        case 0:
            cell.detailTextLabel.text = @"Installing XCode is the first step";
            break;
        case 1:
            cell.detailTextLabel.text = @"Getting used to XCode Environment";
            break;
        case 2:
            cell.detailTextLabel.text = @"Manipulating objects of Cocoa";
            break;
    }
    return cell;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc, that aren't in use
    if (self.tuto2Controller.view.superview == nil) {
        self.tuto2Controller = nil;
    }
    else {
        self.tuto1Controller = nil;
    }
}


/*
 * OnClick Handler on a row of the table list view.
 * Asserts that the user followed the previous tutorials before doing a new one 
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger row = [indexPath row];
    NSString *title;
    //NSString *rowValue = [tutorialsList objectAtIndex:row];
    
    switch ( row ) {
        case 1:
            title = @"Have you followed tuto 1 ?";
            break;
        case 2:
            title = @"Have you followed tutos 1 & 2 ?";
            break;
    }
    
    if ( row > 0 ) {
        UIActionSheet *actionSheet  = [[UIActionSheet alloc] initWithTitle:title
                                                             delegate:self
                                                             cancelButtonTitle:@"No"
                                                             destructiveButtonTitle:@"Yes, I did!"
                                                             otherButtonTitles:nil];
        [actionSheet showInView:self.view];
    }
    NSLog(@"Kikoo");
    if (row == 0 ) { 
            self.tuto1Controller = [[Tutorial1Controller alloc] initWithNibName:@"Tutorial1"
                                                                         bundle:nil];
            [self.view addSubview:self.tuto1Controller.view];
    }
    if (row == 1 ) { 
            self.tuto2Controller = [[Tutorial2Controller alloc] initWithNibName:@"Tutorial2"
                                                                         bundle:nil];
            [self.view addSubview:self.tuto2Controller.view];
    }
    if (row == 2 ) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"It's awkward"
                                                        message:@"The tutorial 3 is not available yet, come back later..."
                                                       delegate:self cancelButtonTitle:@"Grr!" otherButtonTitles:nil];
        [alert show];
    }
}

@end

