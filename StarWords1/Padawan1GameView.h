//
//  Padawan1GameView.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Padawan1GameView : UIView  {
    
    UIImageView         *but_Block;
    UIImageView         *I_Block;
    UIImageView         *was_Block;
    UIImageView         *going_Block;
    UIImageView         *into_Block;
    UIImageView         *tosche_Block;
    UIImageView         *station_Block;
    UIImageView         *to_Block;
    UIImageView         *pick_Block;
    UIImageView         *up_Block;
    UIImageView         *some_Block;
    UIImageView         *power_Block;
    UIImageView         *converters_Block;
    UIImageView         *buy_Block;
    UIImageView         *mos_Block;
    UIImageView         *eisley_Block;
    UIImageView         *cant_Block;
    UIImageView         *couplings_Block;
    UIImageView         *do_Block;
    UIImageView         *help_Block;
    UIImageView         *parts_Block;
    UIImageView         *port_Block;
    UIImageView         *ride_Block;
    UIImageView         *time_Block;
    UIImageView         *my_Block;
    UIImageView         *wait_Block;
    UIImageView         *slow_Block;
    UIImageView         *hurry_Block;
    UIImageView         *tatooine_Block;

    
    
    
    
    CGRect              dropZone;
    CGPoint             startLocation;
    int                 touchCount;
    
    
    
}


@property (nonatomic, retain) IBOutlet UIImageView         *but_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *I_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *was_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *going_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *into_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *tosche_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *station_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *to_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *pick_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *up_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *some_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *power_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *converters_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *buy_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *mos_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *eisley_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *cant_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *couplings_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *do_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *help_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *parts_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *port_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *ride_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *time_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *my_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *wait_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *slow_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *hurry_Block;
@property (nonatomic, retain) IBOutlet UIImageView         *tatooine_Block;


@property (nonatomic, assign) CGRect                       dropZone;
@property (nonatomic, assign) CGPoint                      startLocation;
@property (nonatomic, assign) int                          touchCount;






@end
