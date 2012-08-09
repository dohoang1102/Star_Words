//
//  Jedi1WrongController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#include <AudioToolbox/AudioToolbox.h>

@class Jedi1Controller;
@class MainMenuController;



@interface Jedi1WrongController : UIViewController <UIAlertViewDelegate> {
    
    MainMenuController          *mainMenuController;
    Jedi1Controller             *jedi1Controller;
    
    UIButton                    *tryAgainButton;
    UIButton                    *mainMenuButton;
    UIButton                    *skipButton;
    
    SystemSoundID               badFeelingQuoteSound;
    
    
}


@property (nonatomic, retain) IBOutlet UIButton                     *tryAgainButton;
@property (nonatomic, retain) IBOutlet UIButton                     *mainMenuButton;
@property (nonatomic, retain) IBOutlet UIButton                     *skipButton;

@property (nonatomic, retain) MainMenuController                    *mainMenuController;
@property (nonatomic, retain) Jedi1Controller                       *jedi1Controller;



-(IBAction) mainButtonPressed:(id)sender;

-(IBAction) tryAgainButtonPressed:(id)sender;

-(IBAction) skipButtonPressed:(id)sender;





@end
