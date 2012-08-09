//
//  LevelSelectionController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LevelSelectionController.h"
#import "Newbie1Controller.h"
#import "Padawan1Controller.h"
#import "Jedi1Controller.h"

@implementation LevelSelectionController


@synthesize segmentedControl;
@synthesize newbie1Controller;
@synthesize padawan1Controller;
@synthesize jedi1Controller;




-(IBAction) levelSelectBack: (id) sender  {
    
    [self dismissModalViewControllerAnimated:YES];
}


-(IBAction) levelSelected: (id) sender  {
    
    if (segmentedControl.selectedSegmentIndex == 0) {
        [self switchToNewbie1Controller];
    }
    else if (segmentedControl.selectedSegmentIndex == 1) {
        [self switchToPadawan1Controller];
    }
    else if (segmentedControl.selectedSegmentIndex == 2) {
        [self switchToJedi1Controller];
    }
}



-(void) switchToNewbie1Controller {
    newbie1Controller = [[Newbie1Controller alloc] initWithNibName:@"Newbie1Controller" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.newbie1Controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.newbie1Controller animated:YES];
}


-(void) switchToPadawan1Controller {
    padawan1Controller = [[Padawan1Controller alloc] initWithNibName:@"Padawan1Controller" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.padawan1Controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.padawan1Controller animated:YES];
}

-(void) switchToJedi1Controller {
    jedi1Controller = [[Jedi1Controller alloc] initWithNibName:@"Jedi1Controller" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.jedi1Controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.jedi1Controller animated:YES];
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
