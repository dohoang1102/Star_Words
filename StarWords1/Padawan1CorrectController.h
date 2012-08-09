//
//  Padawan1CorrectController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>




#include <AudioToolbox/AudioToolbox.h>

@class MainMenuController;
@class Padawan1GameController;

@interface Padawan1CorrectController : UIViewController <UIAlertViewDelegate> {
    
    
    UIButton                *playAgain;
    UIButton                *mainMenu;
    UIButton                *nextLevel;
    
    UILabel                 *recordLabel;
    UILabel                 *bestTime;
    
    SystemSoundID           toschiQuoteSound;
    
    MainMenuController      *mainMenuController;
    Padawan1GameController  *padawan1GameController;

}

@property (nonatomic, retain) MainMenuController        *mainMenuController;
@property (nonatomic, retain) Padawan1GameController    *padawan1GameController;


@property (nonatomic, retain) IBOutlet UIButton         *playAgain;
@property (nonatomic, retain) IBOutlet UIButton         *mainMenu;
@property (nonatomic, retain) IBOutlet UIButton         *nextLevel;
@property (nonatomic, retain) IBOutlet UILabel          *recordLabel;
@property (nonatomic, retain) IBOutlet UILabel          *bestTime;


-(IBAction) playAgainButtonPressed:(id)sender;

-(IBAction) mainButtonPressed:(id)sender;

-(IBAction) nextButtonPressed:(id)sender;

-(void) showRecordTime;





@end
