//
//  Jedi1Controller.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Jedi1GameController;



@interface Jedi1Controller : UIViewController {
    
    Jedi1GameController         *jedi1GameController;
    
    
}

@property (nonatomic, retain) Jedi1GameController       *jedi1GameController;


-(IBAction)switchToJedi1GameController: (id)sender;





@end
