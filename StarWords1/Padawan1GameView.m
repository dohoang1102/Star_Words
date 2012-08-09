//
//  Padawan1GameView.m
//  StarWords1
//
//  Created by Jeffrey Johnston on 11/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Padawan1GameView.h"
#import "Globals.h"



@implementation Padawan1GameView

@synthesize but_Block; //0
@synthesize I_Block;  //1
@synthesize was_Block; //2
@synthesize going_Block; //3
@synthesize into_Block; //4
@synthesize tosche_Block; //5
@synthesize station_Block; //6
@synthesize to_Block; //7
@synthesize pick_Block;  //8
@synthesize up_Block; //9
@synthesize some_Block; //10
@synthesize power_Block; //11
@synthesize converters_Block; //12
@synthesize buy_Block; // Y
@synthesize mos_Block;  // Y
@synthesize eisley_Block; // Y
@synthesize cant_Block;  // Y
@synthesize couplings_Block; // Y
@synthesize do_Block; // Y
@synthesize help_Block; // Y
@synthesize parts_Block; // Y
@synthesize port_Block; // Y
@synthesize ride_Block; // Y
@synthesize time_Block; // Y
@synthesize my_Block;  // Y
@synthesize wait_Block;  // Y
@synthesize slow_Block; 
@synthesize hurry_Block; // Y 
@synthesize tatooine_Block; // Y


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
    
    
    if ([touch view] == but_Block)
    {but_Block.center = location;}
    else if ([touch view] == I_Block)
    {I_Block.center = location;}
    else if ([touch view] == was_Block)
    {was_Block.center = location;}
    if ([touch view] == going_Block)
    {going_Block.center = location;}
    else if ([touch view] == into_Block)
    {into_Block.center = location;}
    else if ([touch view] == tosche_Block)
    {tosche_Block.center = location;}
    if ([touch view] == station_Block)
    {station_Block.center = location;}
    else if ([touch view] == to_Block)
    {to_Block.center = location;}
    else if ([touch view] == pick_Block)
    {pick_Block.center = location;}
    if ([touch view] == up_Block)
    {up_Block.center = location;}
    else if ([touch view] == some_Block)
    {some_Block.center = location;}
    else if ([touch view] == power_Block)
    {power_Block.center = location;}
    if ([touch view] == converters_Block)
    {converters_Block.center = location;}
    else if ([touch view] == buy_Block)
    {buy_Block.center = location;}
    else if ([touch view] == mos_Block)
    {mos_Block.center = location;}
    else if ([touch view] == eisley_Block)
    {eisley_Block.center = location;}
    else if ([touch view] == cant_Block)
    {cant_Block.center = location;}
    else if ([touch view] == couplings_Block)
    {couplings_Block.center = location;}
    else if ([touch view] == do_Block)
    {do_Block.center = location;}
    else if ([touch view] == help_Block)
    {help_Block.center = location;}
    else if ([touch view] == parts_Block)
    {parts_Block.center = location;}
    else if ([touch view] == port_Block)
    {port_Block.center = location;}
    else if ([touch view] == ride_Block)
    {ride_Block.center = location;}
    else if ([touch view] == time_Block)
    {time_Block.center = location;}
    else if ([touch view] == my_Block)
    {my_Block.center = location;}
    else if ([touch view] == wait_Block)
    {wait_Block.center = location;}
    else if ([touch view] == hurry_Block)
    {hurry_Block.center = location;}
    else if ([touch view] == tatooine_Block)
    {tatooine_Block.center = location;}
    
    
    
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
                                  message:@"A Padawan should know you can't have more then 21 words! Clearly, you need more training."
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
