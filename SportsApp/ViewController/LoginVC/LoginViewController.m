//
//  LoginViewController.m
//  SportsApp
//
//  Created by sarathkumar s on 15/02/16.
//
//

#import "LoginViewController.h"
#import "SignUpViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize Segment;
- (void)viewDidLoad {
    [super viewDidLoad];
    [Segment setSelectedSegmentIndex:0];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Segment:(id)sender {
    if (Segment.selectedSegmentIndex==1) {
        [self performSegueWithIdentifier:@"SignUp" sender:self];
    } else {
        NSLog(@"login");
    }
}
@end
