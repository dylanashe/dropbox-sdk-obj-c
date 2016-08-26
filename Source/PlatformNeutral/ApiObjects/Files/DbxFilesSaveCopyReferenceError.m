///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESSaveCopyReferenceError.h"
#import "DBXFILESWriteError.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESSaveCopyReferenceError 

- (instancetype)initWithPath:(DBXFILESWriteError *)path {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveCopyReferenceErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithInvalidCopyReference {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveCopyReferenceErrorInvalidCopyReference;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveCopyReferenceErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithNotFound {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveCopyReferenceErrorNotFound;
    }
    return self;
}

- (instancetype)initWithTooManyFiles {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveCopyReferenceErrorTooManyFiles;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXFILESSaveCopyReferenceErrorOther;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == DBXFILESSaveCopyReferenceErrorPath;
}

- (BOOL)isInvalidCopyReference {
    return _tag == DBXFILESSaveCopyReferenceErrorInvalidCopyReference;
}

- (BOOL)isNoPermission {
    return _tag == DBXFILESSaveCopyReferenceErrorNoPermission;
}

- (BOOL)isNotFound {
    return _tag == DBXFILESSaveCopyReferenceErrorNotFound;
}

- (BOOL)isTooManyFiles {
    return _tag == DBXFILESSaveCopyReferenceErrorTooManyFiles;
}

- (BOOL)isOther {
    return _tag == DBXFILESSaveCopyReferenceErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXFILESSaveCopyReferenceErrorPath:
           return @"DBXFILESSaveCopyReferenceErrorPath";
        case DBXFILESSaveCopyReferenceErrorInvalidCopyReference:
           return @"DBXFILESSaveCopyReferenceErrorInvalidCopyReference";
        case DBXFILESSaveCopyReferenceErrorNoPermission:
           return @"DBXFILESSaveCopyReferenceErrorNoPermission";
        case DBXFILESSaveCopyReferenceErrorNotFound:
           return @"DBXFILESSaveCopyReferenceErrorNotFound";
        case DBXFILESSaveCopyReferenceErrorTooManyFiles:
           return @"DBXFILESSaveCopyReferenceErrorTooManyFiles";
        case DBXFILESSaveCopyReferenceErrorOther:
           return @"DBXFILESSaveCopyReferenceErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

- (DBXFILESWriteError *)path {
    if (_tag != DBXFILESSaveCopyReferenceErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXFILESSaveCopyReferenceErrorPath`, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXFILESSaveCopyReferenceErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESSaveCopyReferenceErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESSaveCopyReferenceErrorSerializer serialize:self] description];
}

@end


@implementation DBXFILESSaveCopyReferenceErrorSerializer 

+ (NSDictionary *)serialize:(DBXFILESSaveCopyReferenceError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DBXFILESWriteErrorSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isInvalidCopyReference]) {
        jsonDict[@".tag"] = @"invalid_copy_reference";
    }
    else if ([valueObj isNoPermission]) {
        jsonDict[@".tag"] = @"no_permission";
    }
    else if ([valueObj isNotFound]) {
        jsonDict[@".tag"] = @"not_found";
    }
    else if ([valueObj isTooManyFiles]) {
        jsonDict[@".tag"] = @"too_many_files";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXFILESSaveCopyReferenceError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DBXFILESWriteError *path = [DBXFILESWriteErrorSerializer deserialize:valueDict[@"path"]];
        return [[DBXFILESSaveCopyReferenceError alloc] initWithPath:path];
    }
    else if ([tag isEqualToString:@"invalid_copy_reference"]) {
        return [[DBXFILESSaveCopyReferenceError alloc] initWithInvalidCopyReference];
    }
    else if ([tag isEqualToString:@"no_permission"]) {
        return [[DBXFILESSaveCopyReferenceError alloc] initWithNoPermission];
    }
    else if ([tag isEqualToString:@"not_found"]) {
        return [[DBXFILESSaveCopyReferenceError alloc] initWithNotFound];
    }
    else if ([tag isEqualToString:@"too_many_files"]) {
        return [[DBXFILESSaveCopyReferenceError alloc] initWithTooManyFiles];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXFILESSaveCopyReferenceError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end