//
//  UIView+HDDesignable.m
//  Pods
//
//  Created by Haidora on 16/1/21.
//
//

#import "UIView+HDDesignable.h"
#import <NUI/NUIRenderer.h>

@implementation UIView (HDDesignable)

+ (void)load
{
#ifdef DEBUG
#warning you need set style path for designable.
//    NSString *path = @"/path/to/Style.nss";
//    [NUISettings setAutoUpdatePath:path];
//    [NUISettings loadStylesheetByPath:path];
#endif
}

- (void)setStyle:(NSString *)style
{
    self.nuiClass = style;
}

- (NSString *)style
{
    return self.nuiClass;
}

@end
