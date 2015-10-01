//
//  ViewController.h
//  計算機APP
//
//  Created by 鄭涵嚴 on 2015/9/30.
//  Copyright © 2015年 鄭涵嚴. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int calculate_tmp ;
    __weak IBOutlet UIButton *add_b;
    NSString *lastbutton;
    __weak IBOutlet UIButton *subtract_b;
    __weak IBOutlet UIButton *mulit_b;
    __weak IBOutlet UIButton *div_b;
    BOOL cleardisplay;
    __weak IBOutlet UILabel *display;
}
- (IBAction)subtract:(UIButton *)sender;
- (IBAction)multi:(UIButton *)sender;
- (IBAction)division:(UIButton *)sender;

- (IBAction)add:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)equal:(UIButton *)sender;
- (IBAction)zero:(UIButton *)sender;
- (IBAction)nine:(UIButton *)sender;
- (IBAction)eight:(UIButton *)sender;
- (IBAction)seven:(UIButton *)sender;
- (IBAction)six:(UIButton *)sender;
- (IBAction)five:(UIButton *)sender;
- (IBAction)four:(UIButton *)sender;
- (IBAction)three:(UIButton *)sender;
- (IBAction)two:(UIButton *)sender;
- (IBAction)one:(UIButton *)sender;
-(void)calcfunc:(NSString*)calc;
-(void)setvalue:(NSString*)number;
-(void)setcolor;
@end


