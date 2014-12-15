//
//  AWNibWrapper.m
//  AWNibWrapper
//
//  Created by Alek Åström on 2014-12-15.
//

#import "AWNibWrapper.h"

@interface AWNibWrapper ()
@property (nonatomic, strong) UIView *wrappedView;
@end

@implementation AWNibWrapper

#pragma mark - Initialization
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self nwv_commonInit];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self nwv_commonInit];
    }
    return self;
}
- (void)nwv_commonInit {
    self.nibName = NSStringFromClass(self.class);
}

#pragma mark - Accessors
- (void)setNibName:(NSString *)nibName {
    _nibName = [nibName copy];
    self.wrappedView = (_nibName.length > 0) ? [self.class viewFromNibWithName:_nibName] : nil;
}
- (void)setWrappedView:(UIView *)wrappedView {
    if (_wrappedView == wrappedView) {
        return;
    }
    
    [_wrappedView removeFromSuperview];
    _wrappedView = wrappedView;
    
    if (_wrappedView) {
        _wrappedView.frame = self.bounds;
        _wrappedView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self insertSubview:_wrappedView atIndex:0];
    }
}

#pragma mark - Overrides
- (CGSize)intrinsicContentSize {
    return [self.wrappedView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
}

#pragma mark - Helper methods
+ (UIView *)viewFromNibWithName:(NSString *)nibName {
    NSBundle *bundle = [NSBundle bundleForClass:self];
    return [[bundle loadNibNamed:nibName owner:self options:nil] lastObject];
}

@end
