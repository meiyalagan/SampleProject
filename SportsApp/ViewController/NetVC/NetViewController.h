//
//  NetViewController.h
//  SportsApp
//
//  Created by administrator on 2/16/16.
//
//

#import <UIKit/UIKit.h>
#import "DetailsCustomView.h"
#import "DetailsRightCustomView.h"
#import "SliderCustomView.h"

@interface NetViewController : UIViewController

@property (nonatomic, strong) DetailsCustomView *detailCV;
@property (nonatomic, strong) DetailsRightCustomView *detailRightCV;
@property (nonatomic, strong) SliderCustomView *sliderCV;

@property (weak, nonatomic) IBOutlet SliderCustomView *topImgView;
@property (weak, nonatomic) IBOutlet DetailsCustomView *detailView;
@property (weak, nonatomic) IBOutlet DetailsRightCustomView *rightView;


@end
