//
//  DTLAPUserTrack_.m
//  ddd
//
//  Created by niu_o0 on 2018/12/13.
//

#import <Foundation/Foundation.h>

CHDeclareClass(DTLAPUserTrack)

CHMethod2(void, DTLAPUserTrack, ut, id, arg1, to, id, arg2) {
    
    NSLog(@"`````%@--%@", arg1, arg2);
    
    CHSuper2(DTLAPUserTrack, ut, arg1, to, arg2);
    
}

CHConstructor {
    
    CHLoadLateClass(DTLAPUserTrack);
    CHHook2(DTLAPUserTrack, ut, to);
}
