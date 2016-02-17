//
//  DetailsRightCustomView.m
//  SportsApp
//
//  Created by administrator on 2/16/16.
//
//

#import "DetailsRightCustomView.h"

@implementation DetailsRightCustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        
        [[[NSBundle mainBundle] loadNibNamed:@"DetailsRightCustomView" owner:self options:nil] lastObject];
        [self addSubview:self.view];
    }
    return self;
}

- (IBAction)navigateBtnAction:(id)sender {
}
- (IBAction)videoBtnAction:(id)sender {
}

@end
