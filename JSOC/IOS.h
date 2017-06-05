//
//  IOS.h
//  JSOC
//
//  Created by 郜宇 on 2017/6/5.
//  Copyright © 2017年 Loopeer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol JSObjextProtocol <JSExport>

// 如果后台没有传递参数, 这里不填写参数
- (void)print:(NSString *)jsonString;

@end


@interface IOS : NSObject <JSObjextProtocol>

@end
