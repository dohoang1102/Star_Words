//
//  StarWords1ViewController.h
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainMenuController;

@interface StarWords1ViewController : UIViewController
{
    MainMenuController          *mainMenuController;
    UIImageView                 *splash;
}


@property (nonatomic, retain) MainMenuController    *mainMenuController;
@property (nonatomic, retain) IBOutlet UIImageView  *splash;

-(IBAction) switchToMainMenu:(id)sender;

-(void) fadeImageOut;
-(void) fadeImageIn;

@end
