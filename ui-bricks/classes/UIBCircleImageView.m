//
//  UIBCircleImageView.m
//  ui-bricks
//
//  Created by BenChen on 2016/7/28.
//  Copyright © 2016年 CinnamonRoll. All rights reserved.
//

#import "UIBCircleImageView.h"

@implementation UIBCircleImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGFloat radius = 0.5*[self bounds].size.width;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath (context);
    CGContextAddArc (context, radius, radius, radius, 0, 2*M_PI, 0);
    CGContextClosePath (context);
    CGContextClip (context);
    
    //CGContextDrawImage(context, CGRectMake(0, 0, self.image.size.width, self.image.size.height), self.image.CGImage);
    
    
    if(self.image.size.width == self.image.size.height)
    {
        CGFloat width = self.bounds.size.width;
        CGFloat height = width;
        [self.image drawInRect:CGRectMake(0, 0, width, height)]; // 按照image的比例去畫圖
    }else{
        
        if(self.image.size.width > self.image.size.height)
        {
            CGFloat height  = self.bounds.size.height;
            CGFloat width = height * self.image.size.width / self.image.size.height;
            [self.image drawInRect:CGRectMake(0.5*self.bounds.size.width - 0.5*width, 0, width, height)];
        }else{
            
            CGFloat width = self.bounds.size.width;
            CGFloat height = width * self.image.size.height / self.image.size.width;
            [self.image drawInRect:CGRectMake(0, 0.5*self.bounds.size.height - 0.5*height, width, height)];
        }
    }
    
    
}

-(void)setImage:(UIImage *)image
{
    if(![_image isEqual:image])
    {
        _image = image;
        [self setNeedsDisplay];
    }
}


-(CGSize)sizeThatFits:(CGSize)size
{
    if(self.image)
    {
        return self.image.size;
    }
    return size;
    
}

@end
