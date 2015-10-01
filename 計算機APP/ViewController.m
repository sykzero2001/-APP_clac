//
//  ViewController.m
//  計算機APP
//
//  Created by 鄭涵嚴 on 2015/9/30.
//  Copyright © 2015年 鄭涵嚴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    calculate_tmp = 0 ;
    lastbutton = @"";
    cleardisplay = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)subtract:(UIButton *)sender {
    [sender setTitleColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1] forState:UIControlStateNormal];
    [add_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [mulit_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [div_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self calcfunc:@"-"];
}

- (IBAction)multi:(UIButton *)sender {
   [sender setTitleColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1] forState:UIControlStateNormal];
    [add_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [subtract_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [div_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self calcfunc:@"*"];
}

- (IBAction)division:(UIButton *)sender {
    [sender setTitleColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1] forState:UIControlStateNormal];
    [add_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [subtract_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [mulit_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self calcfunc:@"/"];
    
}

- (IBAction)add:(UIButton *)sender {

    [sender setTitleColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:1] forState:UIControlStateNormal];
    [subtract_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [mulit_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [div_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [self calcfunc:@"+"];
    
}

- (IBAction)clear:(UIButton *)sender {
    [self setcolor];
    calculate_tmp = 0;
    lastbutton = @"";
    cleardisplay = YES;
    display.text  = [NSString stringWithFormat:@"0"];
}

- (IBAction)equal:(UIButton *)sender {
    [self setcolor];
    [self calcfunc:@""] ;
    calculate_tmp = 0;
    
}

- (IBAction)zero:(UIButton *)sender {
    [self setvalue:@"0"];
}

- (IBAction)nine:(UIButton *)sender {
    [self setvalue:@"9"];
}

- (IBAction)eight:(UIButton *)sender {
    [self setvalue:@"8"];
}

- (IBAction)seven:(UIButton *)sender {
    [self setvalue:@"7"];
}

- (IBAction)six:(UIButton *)sender {
    [self setvalue:@"6"];
}

- (IBAction)five:(UIButton *)sender {
    [self setvalue:@"5"];
}

- (IBAction)four:(UIButton *)sender {
    [self setvalue:@"4"];
}

- (IBAction)three:(UIButton *)sender {
    [self setvalue:@"3"];
}

- (IBAction)two:(UIButton *)sender {
    [self setvalue:@"2"];
}

- (IBAction)one:(UIButton *)sender {
   [self setvalue:@"1"];
}

-(void)setvalue:(NSString*)number
{
    [self setcolor];
    
    if (display.text.intValue == 0) {
        display.text  = [NSString stringWithFormat:number];
        cleardisplay = NO;
    }
    else if
        (cleardisplay == YES)
    {
        display.text  = [NSString stringWithFormat:number];
        cleardisplay = NO;
        
    }
    else
    {
        display.text  = [display.text stringByAppendingString:number];
    };
};
-(void)setcolor{
    [add_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [subtract_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [mulit_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    
    [div_b setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
};



-(void)calcfunc:(NSString*)calc
{
    if ([lastbutton isEqualToString:@"+"]) {
        int tmp =  display.text.intValue + calculate_tmp;
        calculate_tmp = tmp;
        lastbutton = calc;
        NSString *resdisplay = [[NSString alloc] initWithFormat:@"%d", tmp];
        display.text =[NSString stringWithFormat:resdisplay];
    }
    else if([lastbutton isEqualToString:@"-"])
    {
        int tmp =  calculate_tmp - display.text.intValue ;
        calculate_tmp = tmp;
        lastbutton = calc;
        NSString *resdisplay = [[NSString alloc] initWithFormat:@"%d", tmp];
        display.text =[NSString stringWithFormat:resdisplay];
    }
    else if([lastbutton isEqualToString:@"*"])
    {
        int tmp =  display.text.intValue * calculate_tmp;
        calculate_tmp = tmp;
        lastbutton = calc;
        NSString *resdisplay = [[NSString alloc] initWithFormat:@"%d", tmp];
        display.text =[NSString stringWithFormat:resdisplay];
    }
    else if([lastbutton isEqualToString:@"/"])
    {
        if (display.text.intValue == 0) {
            NSLog(@"除數不能為0");
            calculate_tmp = 0;
            lastbutton = @"";
        }
        else
        {
        int tmp =  calculate_tmp/display.text.intValue ;
        calculate_tmp = tmp;
        lastbutton = calc;
        NSString *resdisplay = [[NSString alloc] initWithFormat:@"%d", tmp];
        display.text =[NSString stringWithFormat:resdisplay];
        }
    }
    else
    {
        calculate_tmp = display.text.intValue;
        lastbutton = calc;
    };
    cleardisplay = YES;
    
 
};

@end
