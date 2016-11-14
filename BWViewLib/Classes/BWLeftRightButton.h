//
//  OTLeftRightButton.h
//  testNumber
//
//  Created by xuming on 16/8/8.
//  Copyright © 2016年 成都倍智科技. All rights reserved.
//

#import <UIKit/UIKit.h>


/*! 标题在左，按钮在右 */
@interface BWLeftRightButton : UIButton
{
    /*! 图片大小 */
    CGSize _imageSize;
}
/*! 标题所占自身宽度的系数 */
@property (nonatomic, assign) CGFloat titleRatio;
/*! 标题距左边边距 */
@property (nonatomic, assign) CGFloat titleLeftSpace;
/*! image距右边边距 */
@property (nonatomic, assign) CGFloat imageRightSpace;

@end
