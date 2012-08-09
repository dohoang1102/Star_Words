//
//  MainMenuController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


#include <AudioToolbox/AudioToolbox.h>

@class PreferencesController;
@class LevelSelectionController;


@interface MainMenuController : UIViewController {
    
    PreferencesController           *preferencesController;
    LevelSelectionController        *levelSelectionController;
    
    SystemSoundID                   starWarsIntroSound;
    SystemSoundID                   helpMeSound;
}

@property (nonatomic, retain) PreferencesController     *preferencesController;
@property (nonatomic, retain) LevelSelectionController  *levelSelectionController;

-(IBAction) switchToPreferencesController;  
-(IBAction) switchToLevelSelectionController; 


@end
