///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMAdminTier;
@class DBTEAMMembersSetPermissionsResult;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `MembersSetPermissionsResult` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMMembersSetPermissionsResult : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// The member ID of the user to which the change was applied.
@property (nonatomic, readonly, copy) NSString *teamMemberId;

/// The role after the change.
@property (nonatomic, readonly) DBTEAMAdminTier *role;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param teamMemberId The member ID of the user to which the change was
/// applied.
/// @param role The role after the change.
///
/// @return An initialized instance.
///
- (instancetype)initWithTeamMemberId:(NSString *)teamMemberId role:(DBTEAMAdminTier *)role;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `MembersSetPermissionsResult` struct.
///
@interface DBTEAMMembersSetPermissionsResultSerializer : NSObject

///
/// Serializes `DBTEAMMembersSetPermissionsResult` instances.
///
/// @param instance An instance of the `DBTEAMMembersSetPermissionsResult` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMMembersSetPermissionsResult` API object.
///
+ (nullable NSDictionary *)serialize:(DBTEAMMembersSetPermissionsResult *)instance;

///
/// Deserializes `DBTEAMMembersSetPermissionsResult` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMMembersSetPermissionsResult` API object.
///
/// @return An instantiation of the `DBTEAMMembersSetPermissionsResult` object.
///
+ (DBTEAMMembersSetPermissionsResult *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END