//
//  BIDViewController.h
//  ShowHide
//
//  Created by Laïla Atrmouh on 23/10/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *cat;

- (IBAction) show:(id)sender;
- (IBAction) hide:(id)sender;
@end
