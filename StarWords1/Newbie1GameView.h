//
//  Newbie1GameView.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/14/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Newbie1GameView : UIView <UIAlertViewDelegate>
{
    
    UIImageView         *obiWan_Block;  // Yes
    UIImageView         *r2d2_Block; // Yes
    UIImageView         *you_Block;  // Yes
    UIImageView         *chewbacca_Block;  // Yes
    UIImageView         *han_Block;  // Yes
    UIImageView         *help_Block;  // Yes
    UIImageView         *hope_Block;  // Yes
    UIImageView         *kenobi_Block;  // Yes
    UIImageView         *luke_Block;  // Yes
    UIImageView         *me_Block;  // Yes
    UIImageView         *my_Block;   // Yes
    UIImageView         *skywalker_Block;  // Yes
    UIImageView         *solo_Block; // Yes
    UIImageView         *the_Block;  // Yes
    UIImageView         *youre_Block;  // Yes
    UIImageView         *only_Block;   // Yes
    UIImageView         *father_Block;  // Yes
    UIImageView         *to_Block;  // Yes
    UIImageView         *princess_Block;  // Yes
    UIImageView         *some_Block;  // Yes
    UIImageView         *us_Block;  // Yes
    UIImageView         *save_Block;  // Yes
    UIImageView         *darth_Block;  // Yes
    UIImageView         *chance_Block; // Yes
    UIImageView         *make_Block;  // Yes
    UIImageView         *protect_Block;  // Yes
    UIImageView         *best_Block;  // Yes
    UIImageView         *vader_Block;  // Yes
    
    
    
    
    
    
    
    
    CGRect              dropZone;
    CGPoint             startLocation;
    int                 touchCount;

}





@property (nonatomic, retain) IBOutlet UIImageView         *chewbacca_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *han_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *help_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *hope_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *kenobi_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *luke_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *me_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *my_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *skywalker_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *solo_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *the_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *youre_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *obiWan_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *r2d2_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *you_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *only_Block;

@property (nonatomic, retain) IBOutlet UIImageView         *father_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *to_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *princess_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *some_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *us_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *save_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *darth_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *chance_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *make_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *protect_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *best_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *vader_Block;


@property (nonatomic, assign) CGRect                       dropZone;
@property (nonatomic, assign) CGPoint                      startLocation;
@property (nonatomic, assign) int                          touchCount;


@end
