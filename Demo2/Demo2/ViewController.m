//
//  ViewController.m
//  Demo2
//
//  Created by Lu Gia Lam on 4/26/17.
//  Copyright © 2017 Lu Gia Lam. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"User";
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapPushButton:(id)sender {
    [self performSegueWithIdentifier:@"secondViewController" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"secondViewController"]) {
        SecondViewController *secondVC =  [segue destinationViewController];
        secondVC.number = 2;
    }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    double height = [[UIScreen mainScreen] bounds].size.height;
    
    self.lblResult.text = [NSString stringWithFormat:@"%f", height];
}

@end
