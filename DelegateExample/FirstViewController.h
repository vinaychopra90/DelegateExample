//
//  FirstViewController.h
//  DelegateExample
//
//  Created by Vinay Chopra on 01/04/14.
//  Copyright (c) 2014 Vinay Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "myTestProtocol.h"

@interface FirstViewController : UIViewController <myTestProtocol>

@property (strong, nonatomic) IBOutlet UILabel *myDisplayLabel;

- (IBAction)callSecondView:(id)sender;

@end
