//
//  BIDViewController.h
//  usermanual
//
//  Created by Laïla Atrmouh on 23/10/12.
//  Copyright (c) 2012 URI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tutorial1Controller.h"
#import "Tutorial2Controller.h"

@interface BIDViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) Tutorial1Controller *tuto1Controller;
@property (strong, nonatomic) Tutorial2Controller *tuto2Controller;


@property (strong, nonatomic) NSArray *tutorialsList;
 
@end
