//
//  UIImage+UIBResize.h
//  ui-bricks
//
//  Created by BenChen on 2016/7/28.
//  Copyright © 2016年 CinnamonRoll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIBResize)

- (UIImage *)imageScaledToQuarter;
- (UIImage *)imageScaledToHalf;
- (UIImage *)imageScaledToScale:(CGFloat)scale;
- (UIImage *)imageScaledToScale:(CGFloat)scale
       withInterpolationQuality:(CGInterpolationQuality)quality;

+ (UIImage*)imageWithImage:(UIImage*)image scaledToScale:(CGFloat)scale;
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;




@end
