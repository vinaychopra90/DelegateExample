//
//  SecondViewController.m
//  DelegateExample
//
//  Created by Vinay Chopra on 01/04/14.
//  Copyright (c) 2014 Vinay Chopra. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (strong, nonatomic) IBOutlet UITextField *enteredString;

@end

@implementation SecondViewController

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
    NSLog(@"SVC Delegate is: %@",_delegate);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveButton:(id)sender
{
    if([_delegate conformsToProtocol:@protocol(myTestProtocol)])
    {
        NSLog(@"i confirms the protocol ");
    }
    
    if ([_delegate respondsToSelector:@selector(changeAmount:)]) {
        
        NSLog(@"Atlest i respond to selector");
        
        [_delegate changeAmount:_enteredString.text];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
- (IBAction)cancelButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
