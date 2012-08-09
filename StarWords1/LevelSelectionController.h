//
//  LevelSelectionController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Newbie1Controller;
@class Padawan1Controller;
@class Jedi1Controller;


@interface LevelSelectionController : UIViewController {
    
    
    UISegmentedControl          *segmentedControl;
    
    
    Newbie1Controller           *newbie1Controller;
    Padawan1Controller          *padawan1Controller;
    Jedi1Controller             *jedi1Controller;
    
}


@property (nonatomic, retain) IBOutlet UISegmentedControl    *segmentedControl;
@property (nonatomic, retain) Newbie1Controller              *newbie1Controller;
@property (nonatomic, retain) Padawan1Controller             *padawan1Controller;
@property (nonatomic, retain) Jedi1Controller                *jedi1Controller;




-(IBAction) levelSelectBack: (id) sender;
-(IBAction) levelSelected: (id) sender; 

-(void) switchToNewbie1Controller;
-(void) switchToPadawan1Controller;
-(void) switchToJedi1Controller;









@end
