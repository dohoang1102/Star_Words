//
//  Newbie1Controller.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Newbie1GameController;


@interface Newbie1Controller : UIViewController  {
    
    Newbie1GameController      *newbie1GameController;
}


@property (nonatomic, retain) Newbie1GameController     *newbie1GameController;


-(IBAction) switchToNewbie1GameController:(id)sender;


@end
