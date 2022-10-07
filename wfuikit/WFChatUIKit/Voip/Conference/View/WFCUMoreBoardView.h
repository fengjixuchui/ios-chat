//
//  WFCUMoreBoardView.h
//  WFChatUIKit
//
//  Created by Rain on 2022/9/28.
//  Copyright © 2022 Wildfirechat. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MoreItem : NSObject
@property(nonatomic, strong)UIImage *image;
@property(nonatomic, strong)NSString *title;
@property(nonatomic, strong)MoreItem *(^onClicked)(void);
- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image callback:(MoreItem *(^)(void))onClicked;
@end

@interface WFCUMoreBoardView : UIView
- (instancetype)initWithWidth:(CGFloat)width items:(NSArray<MoreItem *> *)items cancel:(void(^)(WFCUMoreBoardView *boardView))cancelBlock;
- (void)dismiss;
@end

NS_ASSUME_NONNULL_END
