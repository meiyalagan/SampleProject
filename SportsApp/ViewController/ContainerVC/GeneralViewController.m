//
//  GeneralViewController.m
//  SportsApp
//
//  Created by sarathkumar s on 16/02/16.
//
//

#import "GeneralViewController.h"
#import "ContainerViewController.h"
@interface GeneralViewController ()
@property (nonatomic, weak) ContainerViewController *containerViewController;
- (IBAction)swapButtonPressed:(id)sender;

@end

@implementation GeneralViewController
@synthesize Segment;
- (void)viewDidLoad {
    [super viewDidLoad];
    [Segment setSelectedSegmentIndex:0];
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

- (IBAction)swapButtonPressed:(id)sender
{
    [self.containerViewController swapViewControllers];
}


- (IBAction)Segment:(id)sender {
    [self.containerViewController swapViewControllers];

}
@end
