//
//  UIImage+UIBTint.h
//  ui-bricks
//
//  Created by BenChen on 2016/7/28.
//  Copyright © 2016年 CinnamonRoll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIBTint)

- (UIImage *)tintedGradientImageWithColor:(UIColor *)tintColor;
- (UIImage *)tintedImageWithColor:(UIColor *)tintColor;


@end
