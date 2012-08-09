//
//  PreferencesController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PreferencesController : UIViewController  {


    
    UISwitch                *timerSwitch;


    UISwitch                *hintsSwitch;
    
    
    
}


@property (nonatomic, retain) IBOutlet UISwitch         *timerSwitch;

@property (nonatomic, retain) IBOutlet UISwitch         *hintSwitch;


-(IBAction) preferencesDone: (id) sender;


-(IBAction) timerSwitchChanged:(id)sender;
-(IBAction) hintsSwitchChanged:(id)sender;

//NEED METHOD FOR TURNING TIMER ON AND OFF

//NEED METHOD FOR TURNING COUNTER ON AND OFF

//NEED METHOD FOR HINTS ON AND OFF






@end
