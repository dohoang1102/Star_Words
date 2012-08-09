//
//  Jedi1Controller.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Jedi1Controller.h"
#import "Jedi1GameController.h"

@implementation Jedi1Controller

@synthesize jedi1GameController;



-(IBAction)switchToJedi1GameController: (id)sender  {
    
    
    jedi1GameController = [[Jedi1GameController alloc] initWithNibName:@"Jedi1GameController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.jedi1GameController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.jedi1GameController animated:YES];
    
}


































- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

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
    // Return YES for supported orientations
    return ((interfaceOrientation != UIInterfaceOrientationPortrait) && (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}


@end
