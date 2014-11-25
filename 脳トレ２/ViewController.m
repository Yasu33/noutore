//
//  ViewController.m
//  脳トレ２
//
//  Created by Emiko Namikawa on 2014/08/05.
//  Copyright (c) 2014年 Emiko Namikawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Label1.text=[NSString stringWithFormat:@"?"];
    Label2.text=[NSString stringWithFormat:@"?"];
    Label3.text=[NSString stringWithFormat:@"?"];
    Label4.text=[NSString stringWithFormat:@"?"];
    Label5.text=[NSString stringWithFormat:@"?"];
    Label6.text=[NSString stringWithFormat:@"?"];
    Label7.text=[NSString stringWithFormat:@"?"];
    Label8.text=[NSString stringWithFormat:@"?"];
    Label9.text=[NSString stringWithFormat:@"?"];
    
    retryLabel.text=[NSString stringWithFormat:@""];
    hanteiLavel.text=[NSString stringWithFormat:@""];
    
    
    button1.enabled = NO;
    button2.enabled = NO;
    button3.enabled = NO;
    button4.enabled = NO;
    button5.enabled = NO;
    button6.enabled = NO;
    button7.enabled = NO;
    button8.enabled = NO;
    button9.enabled = NO;
    
    
    //number=0;
    
    en1.alpha=0.0;
    en2.alpha=0.0;
    en3.alpha=0.0;
    en4.alpha=0.0;
    en5.alpha=0.0;
    en6.alpha=0.0;
    en7.alpha=0.0;
    en8.alpha=0.0;
    en9.alpha=0.0;
    
    button1.alpha=0.8;
    button2.alpha=0.6;
    button3.alpha=0.8;
    button4.alpha=0.8;
    button5.alpha=0.8;
    button6.alpha=0.8;
    button7.alpha=0.8;
    button8.alpha=0.8;
    button9.alpha=0.8;
    
    haikei.alpha=0.0;
    
    perfect.alpha=0.0;
    retry.alpha=0.0;
    
}


-(IBAction)start{
    
    for(int i=1;i<=9;i++){
        labelnumber[i]=i;
    }
    //シャッフルするのを書く
    for (int i=1;i<10 ; i++) {
        int j=arc4random()%9+1;
        NSLog(@"jは　%d",j);
        int t=labelnumber[i];
        labelnumber[i]=labelnumber[j];
        labelnumber[j]=t;
    }
    NSLog(@"=======================");
    
    
    //見た目がばらける
    Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
    Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
    Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
    Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
    Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
    Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
    Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
    Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
    Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
    

    button1.enabled = NO;
    button2.enabled = NO;
    button3.enabled = NO;
    button4.enabled = NO;
    button5.enabled = NO;
    button6.enabled = NO;
    button7.enabled = NO;
    button8.enabled = NO;
    button9.enabled = NO;

    
    [self performSelector:@selector(clear) withObject:nil afterDelay:2.0];
    [self performSelector:@selector(a) withObject:nil afterDelay:2.0];
    [self performSelector:@selector(b) withObject:nil afterDelay:2.5];
    [self performSelector:@selector(c) withObject:nil afterDelay:2.0];
    [self performSelector:@selector(e) withObject:nil afterDelay:0.0];
    [self performSelector:@selector(f) withObject:nil afterDelay:2.0];
    
    number=0;

    
    retryLabel.text=[NSString stringWithFormat:@""];
    
    en1.alpha=0.0;
    en2.alpha=0.0;
    en3.alpha=0.0;
    en4.alpha=0.0;
    en5.alpha=0.0;
    en6.alpha=0.0;
    en7.alpha=0.0;
    en8.alpha=0.0;
    en9.alpha=0.0;
    
    haikei.alpha=0.0;
    
    perfect.alpha=0.0;
    retry.alpha=0.0;
    
}

-(void)clear{
    
    Label1.text=[NSString stringWithFormat:@""];
    Label2.text=[NSString stringWithFormat:@""];
    Label3.text=[NSString stringWithFormat:@""];
    Label4.text=[NSString stringWithFormat:@""];
    Label5.text=[NSString stringWithFormat:@""];
    Label6.text=[NSString stringWithFormat:@""];
    Label7.text=[NSString stringWithFormat:@""];
    Label8.text=[NSString stringWithFormat:@""];
    Label9.text=[NSString stringWithFormat:@""];
    
    
}

-(void)a{
    
    hanteiLavel.text=[NSString stringWithFormat:@"GO"];
    hanteiLavel.textColor=[UIColor blackColor];
    
}

-(void)b{
    
    hanteiLavel.text=[NSString stringWithFormat:@""];
}

-(void)c{
    button1.enabled = YES;
    button2.enabled = YES;
    button3.enabled = YES;
    button4.enabled = YES;
    button5.enabled = YES;
    button6.enabled = YES;
    button7.enabled = YES;
    button8.enabled = YES;
    button9.enabled = YES;
}

-(void)d{
    button1.enabled = NO;
    button2.enabled = NO;
    button3.enabled = NO;
    button4.enabled = NO;
    button5.enabled = NO;
    button6.enabled = NO;
    button7.enabled = NO;
    button8.enabled = NO;
    button9.enabled = NO;
}

-(void)e{
    start.enabled=NO;
}

-(void)f{
    start.enabled=YES;
}

-(IBAction)Button1{
    
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[1]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
        
    }
}


-(IBAction)Button2{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[2]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];

    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button3{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[3]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button4{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[4]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button5{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[5]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button6{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[6]){
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button7{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[7]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button8{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }

    
    if (number==labelnumber[8]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];

    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}


-(IBAction)Button9{
    number=number+1;
    
    if (number==9) {
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        perfect.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
    
    if (number==labelnumber[9]) {
        retryLabel.text=[NSString stringWithFormat:@"OK"];
        //en9.alpha=1.0;
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];

        

    }else{
        retryLabel.text=[NSString stringWithFormat:@""];
        Label1.text=[NSString stringWithFormat:@"%d",labelnumber[1]];
        Label2.text=[NSString stringWithFormat:@"%d",labelnumber[2]];
        Label3.text=[NSString stringWithFormat:@"%d",labelnumber[3]];
        Label4.text=[NSString stringWithFormat:@"%d",labelnumber[4]];
        Label5.text=[NSString stringWithFormat:@"%d",labelnumber[5]];
        Label6.text=[NSString stringWithFormat:@"%d",labelnumber[6]];
        Label7.text=[NSString stringWithFormat:@"%d",labelnumber[7]];
        Label8.text=[NSString stringWithFormat:@"%d",labelnumber[8]];
        Label9.text=[NSString stringWithFormat:@"%d",labelnumber[9]];
        haikei.alpha=0.6;
        retry.alpha=1.0;
        [self performSelector:@selector(d) withObject:nil afterDelay:0.0];
    }
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
