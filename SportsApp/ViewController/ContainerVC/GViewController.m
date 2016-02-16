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
@property (nonatomic, weak) ContainerViewController *containerViewController;
- (IBAction)Login:(id)sender;
- (IBAction)signup:(id)sender;

@end
@implementation GViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    return YES;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    if ([segue.identifier isEqualToString:@"embedContainer"]) {
     self.containerViewController = segue.destinationViewController;
    }
}
- (IBAction)Login:(id)sender
{
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"embedFirst" forKey:@"Segue"];
    [self.containerViewController swapViewControllers];
}
- (IBAction)signup:(id)sender {
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"embedSecond" forKey:@"Segue"];
    [self.containerViewController swapViewControllers];
}
@end
