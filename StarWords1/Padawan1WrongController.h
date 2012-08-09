//
//  Padawan1WrongController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#include <AudioToolbox/AudioToolbox.h>

@class Padawan1Controller;
@class MainMenuController;

@interface Padawan1WrongController : UIViewController  <UIAlertViewDelegate> {
    
    MainMenuController          *mainMenuController;
    Padawan1Controller          *padawan1Controller;
    
    UIButton                    *tryAgainButton;
    UIButton                    *mainMenuButton;
    UIButton                    *skipButton;
    
    SystemSoundID               badFeelingQuoteSound;
    
    
    
}

@property (nonatomic, retain) IBOutlet UIButton                     *tryAgainButton;
@property (nonatomic, retain) IBOutlet UIButton                     *mainMenuButton;
@property (nonatomic, retain) IBOutlet UIButton                     *skipButton;

@property (nonatomic, retain) MainMenuController                    *mainMenuController;
@property (nonatomic, retain) Padawan1Controller                    *padawan1Controller;



-(IBAction) mainButtonPressed:(id)sender;

-(IBAction) tryAgainButtonPressed:(id)sender;

-(IBAction) skipButtonPressed:(id)sender;

@end
