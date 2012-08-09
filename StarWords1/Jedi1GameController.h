//
//  Jedi1GameController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Jedi1Controller;
@class Jedi1CorrectController;
@class Jedi1WrongController;
@class MainMenuController;



@interface Jedi1GameController : UIViewController <UIAlertViewDelegate> {
    
    
    UILabel                     *timerLabel;
    UILabel                     *myTimerLabel;
    NSTimer                     *levelTimer;
    int                         elapsedTime;
    
    
    Jedi1Controller             *jedi1Controller;
    MainMenuController          *mainMenuController;
    Jedi1CorrectController      *jedi1CorrectController;
    Jedi1WrongController        *jedi1WrongController;
    
    UIButton                    *mtfbwy;
    UIButton                    *hintButton;
    UIButton                    *clueButton;
    
    
    
    
}

@property (nonatomic, retain) Jedi1Controller               *jedi1Controller;
@property (nonatomic, retain) MainMenuController            *mainMenuController;
@property (nonatomic, retain) Jedi1CorrectController        *jedi1CorrectController;
@property (nonatomic, retain) Jedi1WrongController          *jedi1WrongController;

@property (nonatomic, retain) IBOutlet UIButton             *hintButton;
@property (nonatomic, retain) IBOutlet UIButton             *mtfbwy;
@property (nonatomic, retain) IBOutlet UIButton             *clueButton;
@property (nonatomic, retain) IBOutlet UILabel              *timerLabel;
@property (nonatomic, retain) IBOutlet UILabel              *myTimerLabel;
@property (assign) int                                      elapsedTime;


-(void)startTimer;
-(void)resetTimer;
-(void)quitTimer;
-(void)showActivity;
-(void)showTime;

-(void) switchToJedi1Controller;
-(void) switchToJedi1CorrectController;
-(void) switchToJedi1WrongController;
-(void) switchToMainMenuController;

-(IBAction) buttonPressed:(id)sender;
-(IBAction) hintButtonPressed:(id)sender;
-(IBAction) clueButtonPressed:(id)sender;

-(BOOL) quoteCount;
-(BOOL) correctOrder;




@end
