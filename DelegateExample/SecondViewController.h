//
//  SecondViewController.h
//  DelegateExample
//
//  Created by Vinay Chopra on 01/04/14.
//  Copyright (c) 2014 Vinay Chopra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myTestProtocol.h"

@interface SecondViewController : UIViewController

@property (nonatomic,weak) id delegate;


@end
