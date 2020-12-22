//
//  CALayer+RandomBtn.m
//  ootd調色
//
//  Created by Vivi Lee on 2020/12/17.
//

#import "CALayer+RandomBtn.h"
#import <UIKit/UIKit.h>
@implementation CALayer (borderColor)
- (void)setBorderColorWithUIColor:(UIColor *)color
{
 self.borderColor = color.CGColor;
}
@end
