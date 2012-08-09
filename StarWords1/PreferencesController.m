//
//  PreferencesController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PreferencesController.h"
#import "Globals.h"

@implementation PreferencesController

@synthesize timerSwitch;

@synthesize hintSwitch;




-(IBAction) preferencesDone: (id) sender
{
	[self dismissModalViewControllerAnimated:YES];
}



-(IBAction) timerSwitchChanged:(id)sender  {  // Initial value is TRUE (ON)
    
    NSLog(@"myTimer BEFORE Timer Switch Method body runs:   %x", myTimer);
    
    if (myTimer) {myTimer = FALSE; [timerSwitch setOn:FALSE];}
    else if (!myTimer) {myTimer = TRUE; [timerSwitch setOn:TRUE];}
    NSLog(@"myTimer AFTER if else:     %x", myTimer);
}



-(IBAction) hintsSwitchChanged:(id)sender  {  // Initial value is FALSE (OFF)
    NSLog(@"myTimer BEFORE Timer Switch Method body runs:   %x", myHint);
    if (!myHint) {myHint = TRUE; [hintsSwitch setOn:TRUE];}
    else if (myHint) {myHint = FALSE; [hintsSwitch setOn:FALSE];}
    NSLog(@"myHint AFTER FOR LOOP:     %x", myHint);

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
        //NSLog(@"myTimer value at LOAD:     %x", myTimer);
        //NSLog(@"myHint value at LOAD:       %x", myHint);
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
