//
//  GViewController.m
//  SportsApp
//
//  Created by sarathkumar s on 16/02/16.
//
//

#import "GViewController.h"
#import "ContainerViewController.h"
@interface GViewController ()
{
    NSUserDefaults *defaults;
}
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIButton *Login;
@property (weak, nonatomic) IBOutlet UIButton *SignUp;
@property (nonatomic, weak) ContainerViewController *containerViewController;
- (IBAction)Login:(id)sender;
- (IBAction)signup:(id)sender;

@end
@implementation GViewController
@synthesize Login,SignUp,view1,view2;
- (void)viewDidLoad {
    [super viewDidLoad];
    view1.hidden=NO;
    view2.hidden=YES;
    SignUp.tag=1;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
  //  NSLog(@"%s", __PRETTY_FUNCTION__);
    return YES;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   // NSLog(@"%s", __PRETTY_FUNCTION__);
    if ([segue.identifier isEqualToString:@"embedContainer"]) {
        self.containerViewController = segue.destinationViewController;
    }
}
- (IBAction)Login:(id)sender
{
    if (Login.tag==1) {
        view2.hidden=YES;
        view1.hidden=NO;
        SignUp.tag=1;
        defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:@"embedFirst" forKey:@"Segue"];
        Login.tag=2;
        [self.containerViewController swapViewControllers];
    }
}
- (IBAction)signup:(id)sender {
    Login.tag=1;
    if (SignUp.tag==1) {
        view1.hidden=YES;
        view2.hidden=NO;
        Login.tag=1;
        defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:@"embedSecond" forKey:@"Segue"];
        SignUp.tag=2;
        [self.containerViewController swapViewControllers];
    }
}
@end
