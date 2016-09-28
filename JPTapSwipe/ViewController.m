//
//  ViewController.m
//  JPTapSwipe
//
//  Created by Student P_05 on 28/09/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap)];
   
    
    tapGesture.numberOfTapsRequired = 1;
    
    self.view.userInteractionEnabled=YES;
    //self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:tapGesture];
    
    
    UISwipeGestureRecognizer *rightGesture= [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleRight)];
    
    
    
    [rightGesture setDirection:UISwipeGestureRecognizerDirectionRight];
    
    [self.view addGestureRecognizer:rightGesture];
    
    
    
    
    UISwipeGestureRecognizer *swipeLeftGesture= [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleLeft)];
    
    [swipeLeftGesture setDirection:UISwipeGestureRecognizerDirectionLeft];
    
    [self.view addGestureRecognizer:swipeLeftGesture];
    
    
    
    
    
    

    UISwipeGestureRecognizer *swipeUpGesture= [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleUp)];
    
    [swipeUpGesture setDirection:UISwipeGestureRecognizerDirectionUp];
    
    [self.view addGestureRecognizer:swipeUpGesture];
    

    
    UISwipeGestureRecognizer *swipeDownGesture= [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleDown)];
    
    [swipeDownGesture setDirection:UISwipeGestureRecognizerDirectionDown];
    
    [self.view addGestureRecognizer:swipeDownGesture];
    

    }




-(void)handleUp
{
    self.view.backgroundColor=[UIColor blueColor];
    
}
-(void)handleDown
{
    self.view.backgroundColor=[UIColor cyanColor];
    
}


-(void)handleTap
{
    self.view.backgroundColor=[UIColor yellowColor];
    
}
-(void)handleRight
{
    self.view.backgroundColor=[UIColor redColor];
    
}
-(void)handleLeft
{
    self.view.backgroundColor = [UIColor greenColor];
    
}
-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"Shake");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
