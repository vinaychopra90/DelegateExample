//
//  FirstViewController.m
//  DelegateExample
//
//  Created by Vinay Chopra on 01/04/14.
//  Copyright (c) 2014 Vinay Chopra. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)callSecondView:(id)sender
{
    SecondViewController * svc= [self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
    svc.delegate=self;
    [self presentViewController:svc animated:YES completion:nil];
}

-(void)changeAmount:(NSString *)value
{
    NSLog(@"I am called in the delegate protocol = %@",value);
    
    _myDisplayLabel.text=value;
}


@end
