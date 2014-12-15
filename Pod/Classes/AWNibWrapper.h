//
//  AWNibWrapper.h
//  AWNibWrapper
//
//  Created by Alek Åström on 2014-12-15.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface AWNibWrapper : UIView

/// Wraps first view in nib with name if set. Defaults to current class name.
@property (nonatomic, copy) IBInspectable NSString *nibName;
@property (nonatomic, readonly) UIView *wrappedView;

@end
