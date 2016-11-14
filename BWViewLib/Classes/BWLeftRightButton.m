//
//  OTLeftRightButton.m
//  testNumber
//
//  Created by xuming on 16/8/8.
//  Copyright © 2016年 成都倍智科技. All rights reserved.
//

#import "BWLeftRightButton.h"




@implementation BWLeftRightButton



- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _titleRatio = 0.8;
        _titleLeftSpace = 8;
        _imageRightSpace = 8;
        self.titleLabel.textAlignment = NSTextAlignmentLeft;
        self.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}
- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [super setImage:image forState:state];
    _imageSize = image.size;
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(_titleLeftSpace, 0, contentRect.size.width*_titleRatio, contentRect.size.height);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageY = (contentRect.size.height - _imageSize.height)/2;
    return CGRectMake(contentRect.size.width-_imageSize.width-_imageRightSpace, imageY, _imageSize.width,_imageSize.height);
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    _titleRatio = 0.8;
    self.titleLabel.textAlignment = NSTextAlignmentLeft;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    _imageSize = self.currentImage.size;
    _titleLeftSpace = 8;
    _imageRightSpace = 8;

//    NSLog(@"%@",self.currentImage);
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
