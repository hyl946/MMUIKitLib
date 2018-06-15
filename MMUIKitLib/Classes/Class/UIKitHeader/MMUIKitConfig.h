//
//  MMUIKitConfig.h
//  Pods
//
//  Created by Loren on 2018/6/15.
//

#ifndef MMUIKitConfig_h
#define MMUIKitConfig_h

#define mm_screen_width [UIScreen mainScreen].bounds.size.width
#define mm_screen_height [UIScreen mainScreen].bounds.size.height

#define mm_kit_block_safe(block,...) if(block){block(__VA_ARGS__);};

#define mm_font_name_size(name,size) [UIFont fontWithName:name size:size]

#define mm_font_system_10 [UIFont systemFontOfSize:10]
#define mm_font_system_11 [UIFont systemFontOfSize:11]
#define mm_font_system_12 [UIFont systemFontOfSize:12]
#define mm_font_system_13 [UIFont systemFontOfSize:13]
#define mm_font_system_14 [UIFont systemFontOfSize:14]
#define mm_font_system_15 [UIFont systemFontOfSize:15]
#define mm_font_system_16 [UIFont systemFontOfSize:16]
#define mm_font_system_17 [UIFont systemFontOfSize:17]
#define mm_font_system_18 [UIFont systemFontOfSize:18]
#define mm_font_system_19 [UIFont systemFontOfSize:19]
#define mm_font_system_20 [UIFont systemFontOfSize:20]
#define mm_font_system_21 [UIFont systemFontOfSize:21]
#define mm_font_system_22 [UIFont systemFontOfSize:22]
#define mm_font_system_23 [UIFont systemFontOfSize:23]
#define mm_font_system_24 [UIFont systemFontOfSize:24]
#define mm_font_system_25 [UIFont systemFontOfSize:25]


UIKIT_STATIC_INLINE BOOL mm_kit_string_is_bank(NSString * string){
    if (string == nil) {
        return YES;
    }
    if (string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if (![string isKindOfClass:[NSString class]]) {
        return YES;
    }
    if (string.length == 0) {
        return YES;
    }
    return NO;
}
#endif /* MMUIKitConfig_h */
