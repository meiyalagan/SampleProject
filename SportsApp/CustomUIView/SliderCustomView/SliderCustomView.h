//
//  SliderCustomView.h
//  SportsApp
//
//  Created by administrator on 2/16/16.
//
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, KASlideShowTransitionType) {
    KASlideShowTransitionFade,
    KASlideShowTransitionSlide
};

typedef NS_ENUM(NSInteger, KASlideShowGestureType) {
    KASlideShowGestureTap,
    KASlideShowGestureSwipe,
    KASlideShowGestureAll
};

typedef NS_ENUM(NSUInteger, KASlideShowPosition) {
    KASlideShowPositionTop,
    KASlideShowPositionBottom
};

typedef NS_ENUM(NSUInteger, KASlideShowState) {
    KASlideShowStateStopped,
    KASlideShowStateStarted
};

@class SliderCustomView;
@protocol KASlideShowDelegate <NSObject>
@optional
- (void) kaSlideShowDidShowNext:(SliderCustomView *) slideShow;
- (void) kaSlideShowDidShowPrevious:(SliderCustomView *) slideShow;
- (void) kaSlideShowWillShowNext:(SliderCustomView *) slideShow;
- (void) kaSlideShowWillShowPrevious:(SliderCustomView *) slideShow;
@end

@protocol KASlideShowDataSource <NSObject>
- (UIImage *)slideShow:(SliderCustomView *)slideShow imageForPosition:(KASlideShowPosition)position;
@end


@interface SliderCustomView : UIView

@property (nonatomic, unsafe_unretained) IBOutlet id <KASlideShowDelegate> delegate;
@property (nonatomic, unsafe_unretained) id<KASlideShowDataSource> dataSource;

@property  float delay;
@property  float transitionDuration;
@property  (readonly, nonatomic) NSUInteger currentIndex;
@property  (atomic) KASlideShowTransitionType transitionType;
@property  (atomic) UIViewContentMode imagesContentMode;
@property  (strong,nonatomic) NSMutableArray * images;
@property  (readonly, nonatomic) KASlideShowState state;

- (void) addImagesFromResources:(NSArray *) names;
- (void) emptyAndAddImagesFromResources:(NSArray *)names;
- (void) emptyAndAddImages:(NSArray *)images;
- (void) setImagesDataSource:(NSMutableArray *)array;
- (void) addGesture:(KASlideShowGestureType)gestureType;
- (void) removeGestures;
- (void) addImage:(UIImage *) image;

- (void) start;
- (void) stop;
- (void) previous;
- (void) next;

@end
