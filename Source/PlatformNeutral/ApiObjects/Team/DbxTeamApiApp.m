///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMApiApp.h"

@implementation DBXTEAMApiApp 

- (instancetype)initWithAppId:(NSString *)appId appName:(NSString *)appName isAppFolder:(NSNumber *)isAppFolder publisher:(NSString *)publisher publisherUrl:(NSString *)publisherUrl linked:(NSDate *)linked {

    self = [super init];
    if (self != nil) {
        _appId = appId;
        _appName = appName;
        _publisher = publisher;
        _publisherUrl = publisherUrl;
        _linked = linked;
        _isAppFolder = isAppFolder;
    }
    return self;
}

- (instancetype)initWithAppId:(NSString *)appId appName:(NSString *)appName isAppFolder:(NSNumber *)isAppFolder {
    return [self initWithAppId:appId appName:appName isAppFolder:isAppFolder publisher:nil publisherUrl:nil linked:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMApiAppSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMApiAppSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMApiAppSerializer serialize:self] description];
}

@end


@implementation DBXTEAMApiAppSerializer 

+ (NSDictionary *)serialize:(DBXTEAMApiApp *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"app_id"] = valueObj.appId;
    jsonDict[@"app_name"] = valueObj.appName;
    jsonDict[@"is_app_folder"] = valueObj.isAppFolder;
    if (valueObj.publisher) {
        jsonDict[@"publisher"] = valueObj.publisher;
    }
    if (valueObj.publisherUrl) {
        jsonDict[@"publisher_url"] = valueObj.publisherUrl;
    }
    if (valueObj.linked) {
        jsonDict[@"linked"] = [DBXNSDateSerializer serialize:valueObj.linked dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    return jsonDict;
}

+ (DBXTEAMApiApp *)deserialize:(NSDictionary *)valueDict {
    NSString *appId = valueDict[@"app_id"];
    NSString *appName = valueDict[@"app_name"];
    NSNumber *isAppFolder = valueDict[@"is_app_folder"];
    NSString *publisher = valueDict[@"publisher"] ?: nil;
    NSString *publisherUrl = valueDict[@"publisher_url"] ?: nil;
    NSDate *linked = valueDict[@"linked"] ? [DBXNSDateSerializer deserialize:valueDict[@"linked"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;

    return [[DBXTEAMApiApp alloc] initWithAppId:appId appName:appName isAppFolder:isAppFolder publisher:publisher publisherUrl:publisherUrl linked:linked];
}

@end