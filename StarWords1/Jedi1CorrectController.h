//
//  Jedi1CorrectController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#include <AudioToolbox/AudioToolbox.h>

@class MainMenuController;

@interface Jedi1CorrectController : UIViewController <UIAlertViewDelegate> {
    
    
    UIButton                *playAgain;
    UIButton                *mainMenu;
    UIButton                *nextLevel;
    
    UILabel                 *recordLabel;
    UILabel                 *bestTime;
    
    SystemSoundID           terrorQuoteSound;
    
    MainMenuController      *mainMenuController;
    
    
    
}


@property (nonatomic, retain) MainMenuController        *mainMenuController;

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
