//
//  Padawan1Controller.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Padawan1GameController;


@interface Padawan1Controller : UIViewController  {
    
    Padawan1GameController      *padawan1GameController;
    UILabel                     *timerLabel;
}


@property (nonatomic, retain) Padawan1GameController    *padawan1GameController;
@property (nonatomic, retain) IBOutlet UILabel             *timerLabel;

-(IBAction) switchToPadawan1GameController:(id)sender;





@end
