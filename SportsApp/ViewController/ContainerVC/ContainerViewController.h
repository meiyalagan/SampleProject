

#import <UIKit/UIKit.h>
#import "GViewController.h"
@interface ContainerViewController : UIViewController<SegueDelegate>

- (void)swapViewControllers;
@property(weak,nonatomic)NSString *SegueIdentify;
@end
