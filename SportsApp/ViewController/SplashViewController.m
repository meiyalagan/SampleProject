//
//  SplashViewController.m
//  SportsApp
//
//  Created by sarathkumar s on 16/02/16.
//
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:.06 target:self selector:@selector(goToThirdButton) userInfo:nil repeats:NO];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)goToThirdButton
{
    [self performSegueWithIdentifier:@"Login" sender:nil];
}

@end
