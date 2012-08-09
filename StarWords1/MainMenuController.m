//
//  MainMenuController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MainMenuController.h"
#import "PreferencesController.h"
#import "LevelSelectionController.h"
#import "Globals.h"


@implementation MainMenuController


@synthesize preferencesController;
@synthesize levelSelectionController;


-(IBAction) switchToPreferencesController  
{
    preferencesController = [[PreferencesController alloc] initWithNibName:@"PreferencesController" bundle:nil];
    [UIView setAnimationDuration: 1.75];
    self.preferencesController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.preferencesController animated:YES];
}


-(IBAction) switchToLevelSelectionController  
{
    levelSelectionController = [[LevelSelectionController alloc] initWithNibName:@"LevelSelectionController" bundle:nil];
    [UIView setAnimationDuration: 1.75];
    self.levelSelectionController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.levelSelectionController animated:YES];
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
    printf ("menuAudioPlayed value is:  %x", menuAudioPlayed);
    if (menuAudioPlayed == FALSE) {
        CFURLRef url = CFBundleCopyResourceURL(CFBundleGetMainBundle(),(CFStringRef) @"sw-intro",CFSTR("wav"),NULL);
        AudioServicesCreateSystemSoundID(url, &starWarsIntroSound);	
        AudioServicesPlaySystemSound(starWarsIntroSound);}
    menuAudioPlayed = TRUE;
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
