//
//  UIImage+CreateThumbnail.h
//  Boxee iOS
//
//  Created by Roberto Osorio on 3/20/13.
//  Copyright (c) 2013 Roberto Osorio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CreateThumbnail)

+ (UIImage *)thumbnailWithColor:(UIColor *)color size:(CGSize)size font:(UIFont*)font andTitle:(NSString*)title;

@end
