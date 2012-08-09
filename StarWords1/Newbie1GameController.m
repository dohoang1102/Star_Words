//
//  Newbie1GameController.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Newbie1GameController.h"
#import "Newbie1Controller.h"
#import "MainMenuController.h"
#import "Newbie1CorrectController.h"
#import "Newbie1WrongController.h"
#import "Globals.h"

#define kNumberOfWordsInQuote (8)


@implementation Newbie1GameController

@synthesize timerLabel;
@synthesize newbie1Controller;
@synthesize mainMenuController;
@synthesize newbie1CorrectController;
@synthesize newbie1WrongController;
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



-(void) switchToNewbie1Controller {
    newbie1Controller = [[Newbie1Controller alloc] initWithNibName:@"Newbie1Controller" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.newbie1Controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.newbie1Controller animated:YES];
}


-(void) switchToMainMenuController {
    mainMenuController = [[MainMenuController alloc] initWithNibName:@"MainMenuController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.mainMenuController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.mainMenuController animated:YES];
}

-(void) switchToNewbie1CorrectController {
    newbie1CorrectController = [[Newbie1CorrectController alloc] initWithNibName:@"Newbie1CorrectController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.newbie1CorrectController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.newbie1CorrectController animated:YES];
}

-(void) switchToNewbie1WrongController {
    newbie1WrongController = [[Newbie1WrongController alloc] initWithNibName:@"Newbie1WrongController" bundle:nil];
    [UIView setAnimationDuration: 2.0];
    self.newbie1WrongController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:self.newbie1WrongController animated:YES];
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
        [self switchToNewbie1WrongController];}
    else 
    {
        
        if (n1 == 0) {
            n1 = elapsedTime;}
        else if (elapsedTime <= n1) {
            n1 = elapsedTime;}
        
        [quoteArray removeAllObjects];
        NSLog(@"the QUOTE array AFTER SWITCH contains %d items. Contents = %@",[quoteArray count], quoteArray);
        NSLog(@"Record Time IN N1GC IS:     %2d:%2d", n1 / 60, n1 % 60 );
        NSLog(@"Elapsed Time IN N1GC IS:     %2d:%2d", elapsedTime / 60, elapsedTime % 60 );
        [self switchToNewbie1CorrectController];}
    
}



-(IBAction) hintButtonPressed:(id)sender  { 
 
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"HINT"
                          message:@"There are 8 words in this quote.  The first is 'Help'."
                          delegate:self
                          cancelButtonTitle:@"Continue"
                          otherButtonTitles: nil];
    
    [alert show];

}


-(IBAction) clueButtonPressed:(id)sender { 
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"CLUE"
                          message:@"In the opening scene of Star Wars IV - A New Hope, Princess Leia secretly stores plans for the Death Star inside R2-D2.  R2-D2 records her plea in a holographic image meant specifically for someone who is in hiding on the planet of Tatooine. What are Princess Leia's final words that R2-D2 captures on this holographic recording?"
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
