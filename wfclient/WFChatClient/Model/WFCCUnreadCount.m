//
//  WFCCUnreadCount.m
//  WFChatClient
//
//  Created by WF Chat on 2018/9/30.
//  Copyright © 2018 WildFireChat. All rights reserved.
//

#import "WFCCUnreadCount.h"

@implementation WFCCUnreadCount
+(instancetype)countOf:(int)unread mention:(int)mention mentionAll:(int)mentionAll {
    WFCCUnreadCount *count = [[WFCCUnreadCount alloc] init];
    count.unread = unread;
    count.unreadMention = mention;
    count.unreadMentionAll = mentionAll;
    return count;
}

-(id)toJsonObj {
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    if(self.unread)
        dict[@"unread"] = @(self.unread);
    if(self.unreadMention)
        dict[@"unreadMention"] = @(self.unreadMention);
    if(self.unreadMentionAll)
        dict[@"unreadMentionAll"] = @(self.unreadMentionAll);
    return dict;
}
@end
