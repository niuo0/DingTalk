//
//  LWPConnection_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/26.
//
//

#import <Foundation/Foundation.h>

CHDeclareClass(LWPConnection);


CHMethod2(void, LWPConnection, sendMessage, id, arg1, message, id, arg2) {
    
    
    NSData * data = nil;
    
    if (objc_msgSend(arg2, @selector(disableGzip))) {
        
         data = objc_msgSend(arg2, @selector(textData));
        
    }else{
        
        data = objc_msgSend(arg2, @selector(gzipData));
    }
    
    NSData * d = objc_msgSend(arg2, @selector(body));
    
    if (d.length > 150) {
        
        d = ((id (*)(id, SEL, id))objc_msgSend)(objc_getClass("LWPUtil"), @selector(compressData:), d);
        
    }
    
    NSData * ds = [data subdataWithRange:NSMakeRange(0, data.length - d.length)];
    
    NSString * s = [[NSString alloc] initWithData:ds encoding:NSUTF8StringEncoding];
    
    NSLog(@"xxxxxxxxxxxxxxxxxxxx====%@", s);
    
    return CHSuper2(LWPConnection, sendMessage, arg1, message, arg2);
    
}



CHConstructor {
    
    CHLoadLateClass(LWPConnection);
    
    CHHook2(LWPConnection, sendMessage, message);
    
}