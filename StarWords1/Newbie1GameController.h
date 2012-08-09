//
//  Newbie1GameController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Newbie1Controller;
@class MainMenuController;
@class Newbie1CorrectController;
@class Newbie1WrongController;



@interface Newbie1GameController : UIViewController <UIAlertViewDelegate> {
    
 
        UILabel                     *timerLabel;
        UILabel                     *myTimerLabel;
        NSTimer                     *levelTimer;
        int                         elapsedTime;

    
        Newbie1Controller           *newbie1Controller;
        MainMenuController          *mainMenuController;
        Newbie1CorrectController    *newbie1CorrectController;
        Newbie1WrongController      *newbie1WrongController;
    
        UIButton                    *mtfbwy;
        UIButton                    *hintButton;
        UIButton                    *clueButton;
    
      
    

}


@property (nonatomic, retain) Newbie1Controller             *newbie1Controller;
@property (nonatomic, retain) MainMenuController            *mainMenuController;
@property (nonatomic, retain) Newbie1CorrectController      *newbie1CorrectController;
@property (nonatomic, retain) Newbie1WrongController        *newbie1WrongController;

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

-(void) switchToNewbie1Controller;
-(void) switchToMainMenuController;
-(void) switchToNewbie1CorrectController;
-(void) switchToNewbie1WrongController;

-(IBAction) buttonPressed:(id)sender;
-(IBAction) hintButtonPressed:(id)sender;
-(IBAction) clueButtonPressed:(id)sender;

-(BOOL) quoteCount;
-(BOOL) correctOrder;


@end
