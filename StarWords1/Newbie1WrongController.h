//
//  Newbie1WrongController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#include <AudioToolbox/AudioToolbox.h>

@class Newbie1Controller;
@class MainMenuController;



@interface Newbie1WrongController : UIViewController <UIAlertViewDelegate> {
    
    
    MainMenuController          *mainMenuController;
    Newbie1Controller           *newbie1Controller;
    
    UIButton                    *tryAgainButton;
    UIButton                    *mainMenuButton;
    UIButton                    *skipButton;
    
    SystemSoundID               badFeelingQuoteSound;
    
    
}


@property (nonatomic, retain) IBOutlet UIButton                     *tryAgainButton;
@property (nonatomic, retain) IBOutlet UIButton                     *mainMenuButton;
@property (nonatomic, retain) IBOutlet UIButton                     *skipButton;

@property (nonatomic, retain) MainMenuController                    *mainMenuController;
@property (nonatomic, retain) Newbie1Controller                     *newbie1Controller;



-(IBAction) mainButtonPressed:(id)sender;

-(IBAction) tryAgainButtonPressed:(id)sender;

-(IBAction) skipButtonPressed:(id)sender;

@end
