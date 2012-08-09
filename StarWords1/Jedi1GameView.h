//
//  Jedi1GameView.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Jedi1GameView : UIView <UIAlertViewDelegate> {
    
    UIImageView         *dont_Block;  // Yes
    UIImageView         *be_Block; // Yes
    UIImageView         *too_Block;  // Yes
    UIImageView         *proud_Block;  // Yes
    UIImageView         *of_Block;  // Yes
    UIImageView         *this_Block;  // Yes
    UIImageView         *technological_Block;  // Yes
    UIImageView         *terror_Block;  // Yes
    UIImageView         *youve_Block;  // Yes
    UIImageView         *constructed_Block;  // Yes
    UIImageView         *motti_Block;   // Yes
    UIImageView         *tarkin_Block;  // Yes
    UIImageView         *death_Block; // Yes
    UIImageView         *star_Block;  // Yes
    UIImageView         *space_Block;  // Yes
    UIImageView         *station_Block;   // Yes
    UIImageView         *power_Block;  // Yes
    UIImageView         *destroy_Block;  // Yes
    UIImageView         *afraid_Block;  // Yes
    UIImageView         *intimidate_Block;  // Yes
    UIImageView         *estimate_Block;  // Yes
    UIImageView         *strength_Block;  // Yes
    UIImageView         *that_Block;  // Yes
    UIImageView         *if_Block; // Yes
    UIImageView         *what_Block;  // Yes
    UIImageView         *we_Block;  // Yes
    UIImageView         *moment_Block;  // Yes
    UIImageView         *when_Block;  // Yes
    
    
    
    
    
}


@property (nonatomic, retain) IBOutlet UIImageView         *dont_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *be_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *too_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *proud_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *of_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *this_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *technological_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *terror_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *youve_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *constructed_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *motti_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *tarkin_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *death_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *star_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *space_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *station_Block;

@property (nonatomic, retain) IBOutlet UIImageView         *power_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *destroy_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *afraid_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *intimidate_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *estimate_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *strength_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *that_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *if_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *what_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *we_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *moment_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *when_Block;


@property (nonatomic, assign) CGRect                       dropZone;
@property (nonatomic, assign) CGPoint                      startLocation;
@property (nonatomic, assign) int                          touchCount;




@end
