//
//  UIImage+CreateThumbnail.m
//  Boxee iOS
//
//  Created by Roberto Osorio on 3/20/13.
//  Copyright (c) 2013 Roberto Osorio. All rights reserved.
//

#import "UIImage+CreateThumbnail.h"

@implementation UIImage (CreateThumbnail)

+ (UIImage *)thumbnailWithColor:(UIColor *)color size:(CGSize)size font:(UIFont*)font andTitle:(NSString*)title {
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
    [[title capitalizedString] drawInRect:CGRectMake(0, size.height/2.0f, size.width, size.width/2.0f) withFont:font lineBreakMode:NSLineBreakByWordWrapping alignment:NSTextAlignmentCenter];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
