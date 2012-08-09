//
//  Padawan1GameController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainMenuController;
@class Padawan1Controller;
@class Padawan1CorrectController;
@class Padawan1WrongController;


@interface Padawan1GameController : UIViewController <UIAlertViewDelegate> {
    
    
    UILabel                     *timerLabel;
     UILabel                     *myTimerLabel;
    UIButton                    *mtfbwy;
    UIButton                    *hintButton;
    UIButton                    *clueButton;
    NSTimer                     *levelTimer;
    int                         elapsedTime;

    Padawan1Controller          *padawan1Controller;
    Padawan1CorrectController   *padawan1CorrectController;
    Padawan1WrongController     *padawan1WrongController;
    MainMenuController          *mainMenuController;
    
    
}


@property (nonatomic, retain) Padawan1Controller            *padawan1Controller;
@property (nonatomic, retain) MainMenuController            *mainMenuController;
@property (nonatomic, retain) Padawan1CorrectController     *padawan1CorrectController;
@property (nonatomic, retain) Padawan1WrongController       *padawan1WrongController;

@property (nonatomic, retain) IBOutlet UIButton             *hintButton;
@property (nonatomic, retain) IBOutlet UIButton             *clueButton;
@property (nonatomic, retain) IBOutlet UIButton             *mtfbwy;
@property (nonatomic, retain) IBOutlet UILabel              *timerLabel;
@property (nonatomic, retain) IBOutlet UILabel              *myTimerLabel;
@property (assign) int                                      elapsedTime;


-(void)startTimer;
-(void)resetTimer;
-(void)quitTimer;
-(void)showActivity;
-(void)showTime;

-(void) switchToPadawan1Controller;
-(void) switchToMainMenuController;
-(void) switchToPadawan1CorrectController;
-(void) switchToPadawan1WrongController;

-(IBAction) buttonPressed:(id)sender;
-(IBAction) hintButtonPressed:(id)sender;
-(IBAction) clueButtonPressed:(id)sender;

-(BOOL) quoteCount;
-(BOOL) correctOrder;







@end
