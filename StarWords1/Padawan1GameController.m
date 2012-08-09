//
//  Padawan1GameController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Padawan1GameController.h"
#import "Padawan1Controller.h"
#import "Padawan1CorrectController.h"
#import "Padawan1WrongController.h"
#import "MainMenuController.h"
#import "Globals.h"

#define kNumberOfWordsInQuote (13)


@implementation Padawan1GameController


@synthesize timerLabel;
@synthesize padawan1Controller;
@synthesize mainMenuController;
@synthesize padawan1CorrectController;
@synthesize padawan1WrongController;
@synthesize mtfbwy;
@synthesize elapsedTime;
@synthesize myTimerLabel;
@synthesize clueButton;
@synthesize hintButton;



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



-(void) switchToPadawan1Controller {
    padawan1Controller = [[Padawan1Controller alloc] initWithNibName:@"Padawan1Controller" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.padawan1Controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.padawan1Controller animated:YES];
}


-(void) switchToMainMenuController {
    mainMenuController = [[MainMenuController alloc] initWithNibName:@"MainMenuController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.mainMenuController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.mainMenuController animated:YES];
}

-(void) switchToPadawan1CorrectController {
    padawan1CorrectController = [[Padawan1CorrectController alloc] initWithNibName:@"Padawan1CorrectController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.padawan1CorrectController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.padawan1CorrectController animated:YES];
}

-(void) switchToPadawan1WrongController {
    padawan1WrongController = [[Padawan1WrongController alloc] initWithNibName:@"Newbie1WrongController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.padawan1WrongController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.padawan1WrongController animated:YES];
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
    
    BOOL myQuoteCount = [self quoteCount];
    BOOL myCorrectOrder = [self correctOrder];
    
    if (!myQuoteCount || !myCorrectOrder)  {
        [quoteArray removeAllObjects];
        [self quitTimer];
        NSLog(@"the QUOTE array AFTER SWITCH contains %d items. Contents = %@",[quoteArray count], quoteArray);
        [self switchToPadawan1WrongController];}
    else 
    {
        if (p1 == 0) {
            p1 = elapsedTime;}
        else if (elapsedTime <= p1) {
            p1 = elapsedTime;}
        
        [quoteArray removeAllObjects];
        NSLog(@"Record Time IN N1GC IS:     %2d:%2d", p1 / 60, p1 % 60 );
        NSLog(@"Elapsed Time IN N1GC IS:     %2d:%2d", elapsedTime / 60, elapsedTime % 60 );
        NSLog(@"the QUOTE array AFTER SWITCH contains %d items. Contents = %@",[quoteArray count], quoteArray);
        [self switchToPadawan1CorrectController];}
    
}

-(IBAction) hintButtonPressed:(id)sender  { 
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"HINT"
                          message:@"There are 13 words in this quote.  The first is 'But'."
                          delegate:self
                          cancelButtonTitle:@"Continue"
                          otherButtonTitles: nil];
    
    [alert show];
    
}


-(IBAction) clueButtonPressed:(id)sender { 
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"CLUE"
                          message:@"In Star Wars Episode IV - A New Hope, R2-D2 and C-3PO are picked up in the desert of Tatooine by some Jawas and are eventually sold to Luke Skywalker's Uncle, Owen Lars.  When Owen takes ownership of the droids, he asks Luke to take them over to the garage and get them cleaned up before dinner.  What is Luke's response to this request?"
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
