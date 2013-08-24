//
//  ViewController.m
//  RubiksTimer
//
//  Created by Adam Morgan on 8/23/13.
//  Copyright (c) 2013 atom.morgan. All rights reserved.
//

#import "ViewController.h"
#import "ScrambleGenerator.h"

@interface ViewController ()

@end

@implementation ViewController {
    ScrambleGenerator *scrambleSource;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.labelText.transform = CGAffineTransformMakeRotation((100 * M_PI) / 100);
    self.labelText.textAlignment = NSTextAlignmentCenter;
    
    scrambleSource = [[ScrambleGenerator alloc] init];
    
    self.labelText.text = [scrambleSource getScramble];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
