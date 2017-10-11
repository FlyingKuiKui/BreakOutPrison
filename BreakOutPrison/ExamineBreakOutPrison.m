//
//  ExamineBreakOutPrison.m
//  BreakOutPrison
//
//  Created by 王盛魁 on 16/7/7.
//  Copyright © 2016年 WangShengKui. All rights reserved.
//

#import "ExamineBreakOutPrison.h"

#import <UIKit/UIKit.h>

// 常见越狱文件
const char *examineBreak_Tool_pathes[] = {
    "/Applications/Cydia.app",
    "/Library/MobileSubstrate/MobileSubstrate.dylib",
    "/bin/bash",
    "/usr/sbin/sshd",
    "/etc/apt"
};
char *printEnv(void){
    char *env = getenv("DYLD_INSERT_LIBRARIES");
    return env;
    
}
@implementation ExamineBreakOutPrison
+ (BOOL)isBreakOutPrison{
    // 判断是否存在越狱文件
    for (int i = 0; i < 5; i++) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithUTF8String:examineBreak_Tool_pathes[i]]]){
            return YES;
        }
    }
    // 判断是否存在cydia应用
    if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"cydia://"]]){
        return YES;
    }
    // 读取系统所有的应用名称
    if ([[NSFileManager defaultManager] fileExistsAtPath:@"/User/Applications/"]){
        return YES;
    }
    // 读取环境变量
    if(printEnv()){
        return YES;
    }
    return NO;
}
@end
