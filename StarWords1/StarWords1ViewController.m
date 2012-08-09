//
//  StarWords1ViewController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "StarWords1ViewController.h"
#import "MainMenuController.h"

@implementation StarWords1ViewController


@synthesize mainMenuController;
@synthesize splash;

-(IBAction) switchToMainMenu:(id)sender {
    
    MainMenuController *mainMenu = [[MainMenuController alloc] initWithNibName:@"MainMenuController" bundle:nil];
    self.mainMenuController = mainMenu;
    [UIView setAnimationDuration: 0];
    self.mainMenuController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.mainMenuController animated:YES];
    
}



-(void) fadeImageOut
{
    splash.alpha = 1;
    [UIView beginAnimations:@"fade out" context:NULL];
    [UIView setAnimationDuration:3];
    splash.alpha = 0;
    [UIView commitAnimations];
}

-(void) fadeImageIn
{
    splash.alpha = 0;
    [UIView beginAnimations:@"fade in" context:NULL];
    [UIView setAnimationDuration:2];
    splash.alpha = 1;
    [UIView commitAnimations];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self fadeImageIn];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
   
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
 
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
 
    
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return ((interfaceOrientation != UIInterfaceOrientationPortrait) && (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

@end
