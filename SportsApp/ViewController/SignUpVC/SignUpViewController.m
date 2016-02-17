//
//  SignUpViewController.m
//  SportsApp
//
//  Created by sarathkumar s on 15/02/16.
//
//

#import "SignUpViewController.h"
#import "ActivationCodeVC.h"
#import "ContainerViewController.h"
@interface SignUpViewController ()
@property (nonatomic, weak) ContainerViewController *containerViewController;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"SecondViewController - viewDidLoad");

}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //  NSLog(@"%s", __PRETTY_FUNCTION__);
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)Continue:(id)sender {
    NSUserDefaults *defauts=[NSUserDefaults standardUserDefaults];
    [defauts setObject:@"embedThird"forKey:@"Segue"];
    [self.containerViewController swapViewControllers];

}
@end
