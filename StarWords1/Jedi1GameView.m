//
//  Jedi1GameView.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Jedi1GameView.h"
#import "Globals.h"

@implementation Jedi1GameView

@synthesize dont_Block;
@synthesize be_Block;
@synthesize too_Block;
@synthesize proud_Block;
@synthesize of_Block;
@synthesize this_Block;
@synthesize technological_Block;
@synthesize terror_Block;
@synthesize youve_Block;
@synthesize constructed_Block;
@synthesize motti_Block;
@synthesize tarkin_Block;
@synthesize death_Block;
@synthesize star_Block;
@synthesize space_Block;
@synthesize station_Block;
@synthesize power_Block;
@synthesize destroy_Block;
@synthesize afraid_Block;
@synthesize intimidate_Block;
@synthesize estimate_Block;
@synthesize strength_Block;
@synthesize what_Block;
@synthesize if_Block;
@synthesize that_Block;
@synthesize we_Block;
@synthesize moment_Block;
@synthesize when_Block;


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
    
    
    if ([touch view] == dont_Block)
    {dont_Block.center = location;}
    else if ([touch view] == be_Block)
    {be_Block.center = location;}
    else if ([touch view] == too_Block)
    {too_Block.center = location;}
    if ([touch view] == proud_Block)
    {proud_Block.center = location;}
    else if ([touch view] == of_Block)
    {of_Block.center = location;}
    else if ([touch view] == this_Block)
    {this_Block.center = location;}
    if ([touch view] == technological_Block)
    {technological_Block.center = location;}
    else if ([touch view] == terror_Block)
    {terror_Block.center = location;}
    else if ([touch view] == youve_Block)
    {youve_Block.center = location;}
    if ([touch view] == constructed_Block)
    {constructed_Block.center = location;}
    else if ([touch view] == motti_Block)
    {motti_Block.center = location;}
    else if ([touch view] == tarkin_Block)
    {tarkin_Block.center = location;}
    if ([touch view] == death_Block)
    {death_Block.center = location;}
    else if ([touch view] == star_Block)
    {star_Block.center = location;}
    else if ([touch view] == space_Block)
    {space_Block.center = location;}
    else if ([touch view] == station_Block)
    {station_Block.center = location;}
    else if ([touch view] == power_Block)
    {power_Block.center = location;}
    else if ([touch view] == destroy_Block)
    {destroy_Block.center = location;}
    else if ([touch view] == afraid_Block)
    {afraid_Block.center = location;}
    else if ([touch view] == intimidate_Block)
    {intimidate_Block.center = location;}
    else if ([touch view] == estimate_Block)
    {estimate_Block.center = location;}
    else if ([touch view] == strength_Block)
    {strength_Block.center = location;}
    else if ([touch view] == that_Block)
    {that_Block.center = location;}
    else if ([touch view] == if_Block)
    {if_Block.center = location;}
    else if ([touch view] == what_Block)
    {what_Block.center = location;}
    else if ([touch view] == we_Block)
    {we_Block.center = location;}
    else if ([touch view] == moment_Block)
    {moment_Block.center = location;}
    else if ([touch view] == when_Block)
    {when_Block.center = location;}
    
    
    
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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
