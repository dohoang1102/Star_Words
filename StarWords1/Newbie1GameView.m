//
//  Newbie1GameView.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/14/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Newbie1GameView.h"
#import "Globals.h"


@implementation Newbie1GameView



@synthesize obiWan_Block;
@synthesize r2d2_Block;
@synthesize you_Block;
@synthesize chewbacca_Block;
@synthesize han_Block;
@synthesize help_Block;
@synthesize hope_Block;
@synthesize kenobi_Block;
@synthesize luke_Block;
@synthesize me_Block;
@synthesize my_Block;
@synthesize skywalker_Block;
@synthesize solo_Block;
@synthesize the_Block;
@synthesize youre_Block;
@synthesize only_Block;
@synthesize father_Block;
@synthesize to_Block;
@synthesize princess_Block;
@synthesize some_Block;
@synthesize us_Block;
@synthesize save_Block;
@synthesize darth_Block;
@synthesize chance_Block;
@synthesize make_Block;
@synthesize protect_Block;
@synthesize best_Block;
@synthesize vader_Block;

@synthesize dropZone;
@synthesize startLocation;
@synthesize touchCount;



-(void) drawRect:(CGRect) rect {

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
    dropZone = CGRectMake(10,145,460,130);
    CGContextAddRect(context, dropZone);
    CGContextStrokePath(context);
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextFillRect(context, dropZone);    
    
}


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:self];
    startLocation = location;

    
    NSLog(@"Image x coord:   %f", location.x);
    NSLog(@"Image y coord:   %f", location.y);
    
    
    if ([touch view] == obiWan_Block)
    {obiWan_Block.center = location;}
    else if ([touch view] == r2d2_Block)
    {r2d2_Block.center = location;}
    else if ([touch view] == you_Block)
    {you_Block.center = location;}
    if ([touch view] == chewbacca_Block)
    {chewbacca_Block.center = location;}
    else if ([touch view] == han_Block)
    {han_Block.center = location;}
    else if ([touch view] == help_Block)
    {help_Block.center = location;}
    if ([touch view] == hope_Block)
    {hope_Block.center = location;}
    else if ([touch view] == kenobi_Block)
    {kenobi_Block.center = location;}
    else if ([touch view] == luke_Block)
    {luke_Block.center = location;}
    if ([touch view] == me_Block)
    {me_Block.center = location;}
    else if ([touch view] == my_Block)
    {my_Block.center = location;}
    else if ([touch view] == skywalker_Block)
    {skywalker_Block.center = location;}
    if ([touch view] == solo_Block)
    {solo_Block.center = location;}
    else if ([touch view] == the_Block)
    {the_Block.center = location;}
    else if ([touch view] == youre_Block)
    {youre_Block.center = location;}
    else if ([touch view] == only_Block)
    {only_Block.center = location;}
    else if ([touch view] == father_Block)
    {father_Block.center = location;}
    else if ([touch view] == to_Block)
    {to_Block.center = location;}
    else if ([touch view] == princess_Block)
    {princess_Block.center = location;}
    else if ([touch view] == us_Block)
    {us_Block.center = location;}
    else if ([touch view] == save_Block)
    {save_Block.center = location;}
    else if ([touch view] == darth_Block)
    {darth_Block.center = location;}
    else if ([touch view] == chance_Block)
    {chance_Block.center = location;}
    else if ([touch view] == make_Block)
    {make_Block.center = location;}
    else if ([touch view] == protect_Block)
    {protect_Block.center = location;}
    else if ([touch view] == best_Block)
    {best_Block.center = location;}
    else if ([touch view] == vader_Block)
    {vader_Block.center = location;}
    else if ([touch view] == some_Block)
    {some_Block.center = location;}
    
    
    
}


-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [self touchesBegan:touches withEvent:event];
}



-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:self];
    UIView *temp = [touch view];
    UIImageView *currentImageView = (UIImageView *)[touch view];
    
    NSLog(@"Current Image View is:   %@", currentImageView);
     
    if ((location.x > dropZone.origin.x) && (location.y >= dropZone.origin.y) &&  ([touch view] != self))
        {
    
            CGRect frame = temp.frame;
           
            if (touchCount == 0) {
                frame.origin.x = 15;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 1) {
                frame.origin.x = 80;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView]; 
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 2) {
                frame.origin.x = 145;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 3) {
                frame.origin.x = 210;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 4) {
                frame.origin.x = 275;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 5) {
                frame.origin.x = 340;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 6) {
                frame.origin.x = 405;
                frame.origin.y = 160;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 7) {
                frame.origin.x = 15;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 8) {
                frame.origin.x = 80;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 9) {
                frame.origin.x = 145;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 10) {
                frame.origin.x = 210;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 11) {
                frame.origin.x = 275;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
                }
            else if (touchCount == 12) {
                frame.origin.x = 340;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 13) {
                frame.origin.x = 405;
                frame.origin.y = 190;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 14) {
                frame.origin.x = 15;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 15) {
                frame.origin.x = 80;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 16) {
                frame.origin.x = 145;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 17) {
                frame.origin.x = 210;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 18) {
                frame.origin.x = 275;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 19) {
                frame.origin.x = 340;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount == 20) {
                frame.origin.x = 405;
                frame.origin.y = 220;
                temp.frame = frame;
                [quoteArray addObject: currentImageView];
                [currentImageView setUserInteractionEnabled:FALSE];
                touchCount++;
            }
            else if (touchCount > 20) {
                //NEED TO SEND BLOCK BACK TO ORIGINAL LOCATION
                UIAlertView *alert = [[UIAlertView alloc]
                                      initWithTitle:@"HOLD ON A SEC!"
                                      message:@"Quotes can't have more then 21 words you newbie! Clearly, you need more training."
                                      delegate:self
                                      cancelButtonTitle:@"Continue"
                                      otherButtonTitles: nil];
              
                [alert show];

            }
            
            NSLog(@"Image Frame x coord:   %f", self.frame.origin.x);
            NSLog(@"Image Frame y coord:   %f", self.frame.origin.y);
            NSLog(@"Image End x coord:   %f", location.x);
            NSLog(@"Image End y coord:   %f", location.y);
            printf("Yes!  Intersection!");
            
            NSLog(@"the quote array contains %d items. Contents = %@",[quoteArray count], quoteArray);
        
        }
}





- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}



@end



