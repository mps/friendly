//
//  LoginViewController.m
//  Friendly
//
//  Created by Matthew Strickland on 10/10/12.
//  Copyright (c) 2012 Matthew Strickland. All rights reserved.
//

#import "LoginViewController.h"

#import "AppDelegate.h"

@interface LoginViewController ()

- (IBAction)performLogin:(id)sender;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation LoginViewController

@synthesize spinner = _spinner;
@synthesize loginButton = _loginButton;

- (void)performLogin:(id)sender {
    
    [self.spinner startAnimating];
    
    AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    [appDelegate openSession];
}

- (void)loginFailed
{
    // User switched back to the app without authorizing. Stay here, but
    // stop the spinner.
    [self.spinner stopAnimating];
}

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
