//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

@interface LAAction : NSObject
{
    NSString *_pluginName;
    NSString *_methodName;
    NSString *_className;
    NSString *_mode;
}

+ (id)identifierForMethod:(id)arg1 pluginName:(id)arg2;
@property(copy, nonatomic) NSString *mode; // @synthesize mode=_mode;
@property(copy, nonatomic) NSString *className; // @synthesize className=_className;
@property(copy, nonatomic) NSString *methodName; // @synthesize methodName=_methodName;
@property(copy, nonatomic) NSString *pluginName; // @synthesize pluginName=_pluginName;
- (id)instanceIdentifier;
- (id)actionIdentifier;
- (id)initWithMethodName:(id)arg1 pluginName:(id)arg2 className:(id)arg3 mode:(id)arg4;

@end
