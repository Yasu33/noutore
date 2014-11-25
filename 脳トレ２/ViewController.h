//
//  ViewController.h
//  脳トレ２
//
//  Created by Emiko Namikawa on 2014/08/05.
//  Copyright (c) 2014年 Emiko Namikawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int number;
    int labelnumber[10];
    
    IBOutlet UILabel *Label1;
    IBOutlet UILabel *Label2;
    IBOutlet UILabel *Label3;
    IBOutlet UILabel *Label4;
    IBOutlet UILabel *Label5;
    IBOutlet UILabel *Label6;
    IBOutlet UILabel *Label7;
    IBOutlet UILabel *Label8;
    IBOutlet UILabel *Label9;
    
    
    IBOutlet UILabel *retryLabel;
    
    IBOutlet UILabel *hanteiLavel;
    
    IBOutlet UIButton *button1;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button3;
    IBOutlet UIButton *button4;
    IBOutlet UIButton *button5;
    IBOutlet UIButton *button6;
    IBOutlet UIButton *button7;
    IBOutlet UIButton *button8;
    IBOutlet UIButton *button9;
    IBOutlet UIButton *start;
    
    IBOutlet UIView *en1;
    IBOutlet UIView *en2;
    IBOutlet UIView *en3;
    IBOutlet UIView *en4;
    IBOutlet UIView *en5;
    IBOutlet UIView *en6;
    IBOutlet UIView *en7;
    IBOutlet UIView *en8;
    IBOutlet UIView *en9;
    
    IBOutlet UIView *haikei;
    
    IBOutlet UIView *perfect;
    IBOutlet UIView *retry;
}


-(IBAction)Button1;
-(IBAction)Button2;
-(IBAction)Button3;
-(IBAction)Button4;
-(IBAction)Button5;
-(IBAction)Button6;
-(IBAction)Button7;
-(IBAction)Button8;
-(IBAction)Button9;

-(IBAction)start;






@end
