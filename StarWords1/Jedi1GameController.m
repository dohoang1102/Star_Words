//
//  Jedi1GameController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Jedi1GameController.h"
#import "Jedi1Controller.h"
#import "Jedi1CorrectController.h"
#import "Jedi1WrongController.h"
#import "MainMenuController.h"
#import "Globals.h"

#define kNumberOfWordsInQuote (10)

@implementation Jedi1GameController



@synthesize timerLabel;
@synthesize jedi1Controller;
@synthesize mainMenuController;
@synthesize jedi1CorrectController;
@synthesize jedi1WrongController;
@synthesize hintButton;
@synthesize mtfbwy;
@synthesize elapsedTime;
@synthesize myTimerLabel;
@synthesize clueButton;





- (void)startTimer {
    elapsedTime = 0;
    [self showTime];
    levelTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
}

- (void)resetTimer {
    elapsedTime = 0;
    [self showTime];
}

- (IBAction)quitTimer {
    [levelTimer invalidate];
}

- (void)showActivity {
    elapsedTime++;
    [self showTime];
}

- (void)showTime {
    timerLabel.text = [NSString stringWithFormat:@"%02d:%02d", elapsedTime / 60, elapsedTime % 60];
}



-(void) switchToJedi1Controller {
    jedi1Controller = [[Jedi1Controller alloc] initWithNibName:@"Jedi1Controller" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.jedi1Controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.jedi1Controller animated:YES];
}


-(void) switchToMainMenuController {
    mainMenuController = [[MainMenuController alloc] initWithNibName:@"MainMenuController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.mainMenuController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.mainMenuController animated:YES];
}

-(void) switchToJedi1CorrectController {
    jedi1CorrectController = [[Jedi1CorrectController alloc] initWithNibName:@"Jedi1CorrectController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.jedi1CorrectController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.jedi1CorrectController animated:YES];
}

-(void) switchToJedi1WrongController {
    jedi1WrongController = [[Jedi1WrongController alloc] initWithNibName:@"Jedi1WrongController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.jedi1WrongController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.jedi1WrongController animated:YES];
}



-(BOOL) quoteCount {
    BOOL quoteCount; 
    
    if ([quoteArray count] != kNumberOfWordsInQuote) {
        quoteCount = FALSE;
        return quoteCount;}
    else {return quoteCount;}
}


-(BOOL) correctOrder {
    BOOL correctOrder;
    int index;
    
    for (UIImageView *wordBlock in quoteArray) {
        
        index = [quoteArray indexOfObject:wordBlock];
        
        if (index != wordBlock.tag) {
            correctOrder = FALSE;}
        else {correctOrder = TRUE;}
    }
    return correctOrder;
}


-(IBAction) buttonPressed:(id)sender  {
    NSLog(@"the QUOTE array BEFORE SWITCH contains %d items. Contents = %@",[quoteArray count], quoteArray);
    
    //recordTime = elapsedTime;
     
    
    
    BOOL myQuoteCount = [self quoteCount];
    BOOL myCorrectOrder = [self correctOrder];
    
    if (!myQuoteCount || !myCorrectOrder)  {
        [quoteArray removeAllObjects];
        [self quitTimer];
        NSLog(@"the QUOTE array AFTER SWITCH contains %d items. Contents = %@",[quoteArray count], quoteArray);
        [self switchToJedi1WrongController];}
    else 
    {
        if (jed1 == 0) {
            jed1 = elapsedTime;}
        else if (elapsedTime <= jed1) {
            jed1 = elapsedTime;
        }

        [quoteArray removeAllObjects];
        NSLog(@"Record Time IN N1GC IS:     %2d:%2d", jed1 / 60, jed1 % 60 );
        NSLog(@"Elapsed Time IN N1GC IS:     %2d:%2d", elapsedTime / 60, elapsedTime % 60 );
        NSLog(@"the QUOTE array AFTER SWITCH contains %d items. Contents = %@",[quoteArray count], quoteArray);
        [self switchToJedi1CorrectController];}
    
}



-(IBAction) hintButtonPressed:(id)sender  { 
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"HINT"
                          message:@"Star Wars Episode IV - A New Hope.  Quote takes place while Motti is sitting at the 'board table'."
                          delegate:self
                          cancelButtonTitle:@"Continue"
                          otherButtonTitles: nil];
    [alert show];
}


-(IBAction) clueButtonPressed:(id)sender { 
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"CLUE"
                          message:@"What does Darth Vader say to Conan Antonio Motti in response to his description of the Death Star?"
                          delegate:self
                          cancelButtonTitle:@"Continue"
                          otherButtonTitles: nil];
    [alert show];
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
    
    if (myTimer == FALSE) {
        self.timerLabel.hidden = YES;
        self.myTimerLabel.hidden = YES;}
    else {
        self.timerLabel.hidden = NO;
        self.myTimerLabel.hidden = NO;
        [self startTimer];}
    
    if (myHint == TRUE) {
        self.hintButton.hidden = NO;}
    else {self.hintButton.hidden = YES;}
    
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
