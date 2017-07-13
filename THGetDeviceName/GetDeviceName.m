//
//  Deveice.m
//  cocoaPodsDemo
//
//  Created by eddy on 2017/6/10.
//  Copyright © 2017年 eddy. All rights reserved.
//

#import "GetDeviceName.h"
#import <sys/utsname.h>

@implementation GetDeviceName

NSDictionary * deviceNameMapper(){
    NSDictionary *deviceNamesByCode = @{@"i386"      :@"Simulator",
                             //iPod 所有版本
                             @"iPod1,1"   :@"iPod touch",
                             @"iPod2,1"   :@"iPod touch (2nd generation)",
                             @"iPod3,1"   :@"iPod touch (3rd generation)",
                             @"iPod4,1"   :@"iPod touch (4th generation)",
                             @"iPod5,1"   :@"iPod touch (5th generation)",
                             @"iPod7,1"   :@"iPod touch (6th generation)",
                             //iPad 所有版本
                             @"iPad1,1"   :@"iPad",
                             @"iPad2,1"   :@"iPad 2",
                             @"iPad2,2"   :@"iPad 2",
                             @"iPad2,3"   :@"iPad 2",
                             @"iPad2,4"   :@"iPad 2",
                             @"iPad3,1"   :@"iPad (3rd generation)",
                             @"iPad3,2"   :@"iPad (3rd generation)",
                             @"iPad3,3"   :@"iPad (3rd generation)",
                             @"iPad3,4"   :@"iPad (4th generation)",
                             @"iPad3,5"   :@"iPad (4th generation)",
                             @"iPad3,6"   :@"iPad (4th generation)",
                             @"iPad6,11"  :@"iPad (5th generation)",
                             @"iPad6,12"  :@"iPad (5th generation)",
                             //iPad Air 所有版本
                             @"iPad4,1"   :@"iPad Air",
                             @"iPad4,2"   :@"iPad Air",
                             @"iPad4,3"   :@"iPad Air",
                             @"iPad5,3"   :@"iPad Air 2",
                             @"iPad5,4"   :@"iPad Air 2",
                             //iPad Pro 所有版本
                             @"iPad6,3"   :@"iPad Pro (9.7-inch)",
                             @"iPad6,4"   :@"iPad Pro (9.7-inch)",
                             @"iPad6,7"   :@"iPad Pro (12.9-inch)",
                             @"iPad6,8"   :@"iPad Pro (12.9-inch)",
                             @"iPad7,1"   :@"iPad Pro (12.9-inch, 2nd generation)",
                             @"iPad7,2"   :@"iPad Pro (12.9-inch, 2nd generation)",
                             @"iPad7,3"   :@"iPad Pro (10.5-inch)",
                             @"iPad7,4"   :@"iPad Pro (10.5-inch)",
                             //iPad mini 所有版本
                             @"iPad2,5"   :@"iPad mini",
                             @"iPad2,6"   :@"iPad mini",
                             @"iPad2,7"   :@"iPad mini",
                             @"iPad4,4"   :@"iPad mini 2",
                             @"iPad4,5"   :@"iPad mini 2",
                             @"iPad4,6"   :@"iPad mini 2",
                             @"iPad4,7"   :@"iPad mini 3",
                             @"iPad4,8"   :@"iPad mini 3",
                             @"iPad4,9"   :@"iPad mini 3",
                             @"iPad5,1"   :@"iPad mini 4",
                             @"iPad5,2"   :@"iPad mini 4",
                             //iPhone 所有版本
                             @"iPhone1,1" :@"iPhone",
                             @"iPhone1,2" :@"iPhone 3G",
                             @"iPhone2,1" :@"iPhone 3GS",
                             @"iPhone3,1" :@"iPhone 4",
                             @"iPhone3,2" :@"iPhone 4",
                             @"iPhone3,3" :@"iPhone 4",
                             @"iPhone4,1" :@"iPhone 4S",
                             @"iPhone5,1" :@"iPhone 5",
                             @"iPhone5,2" :@"iPhone 5",
                             @"iPhone5,3" :@"iPhone 5C",
                             @"iPhone5,4" :@"iPhone 5C",
                             @"iPhone6,1" :@"iPhone 5S",
                             @"iPhone6,2" :@"iPhone 5S",
                             @"iPhone7,2" :@"iPhone 6",
                             @"iPhone7,1" :@"iPhone 6 Plus",
                             @"iPhone8,1" :@"iPhone 6S",
                             @"iPhone8,2" :@"iPhone 6S Plus",
                             @"iPhone8,4" :@"iPhone SE",
                             @"iPhone9,1" :@"iPhone 7",
                             @"iPhone9,2" :@"iPhone 7 Plus",
                             @"iPhone9,3" :@"iPhone 7",
                             @"iPhone9,4" :@"iPhone 7 Plus"
                             };
    return deviceNamesByCode;
}

+ (NSString *)getDeviceName{
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString *code = [NSString stringWithCString:systemInfo.machine
                                        encoding:NSUTF8StringEncoding];
    
    NSString *deviceName = [deviceNameMapper() objectForKey:code];
    
    if (!deviceName) {
        // Not found on database. At least guess main device type from string contents:
        deviceName = code;
    }
    
    return deviceName;
}
@end
