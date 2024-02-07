//
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class callHello extends $pb.GeneratedMessage {
  factory callHello({
    $core.String? hello,
  }) {
    final $result = create();
    if (hello != null) {
      $result.hello = hello;
    }
    return $result;
  }
  callHello._() : super();
  factory callHello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory callHello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'callHello', package: const $pb.PackageName(_omitMessageNames ? '' : 'Hello'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hello')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  callHello clone() => callHello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  callHello copyWith(void Function(callHello) updates) => super.copyWith((message) => updates(message as callHello)) as callHello;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static callHello create() => callHello._();
  callHello createEmptyInstance() => create();
  static $pb.PbList<callHello> createRepeated() => $pb.PbList<callHello>();
  @$core.pragma('dart2js:noInline')
  static callHello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<callHello>(create);
  static callHello? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hello => $_getSZ(0);
  @$pb.TagNumber(1)
  set hello($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHello() => $_has(0);
  @$pb.TagNumber(1)
  void clearHello() => clearField(1);
}

/// The response message containing the greetings
class responseHello extends $pb.GeneratedMessage {
  factory responseHello({
    $core.bool? response,
  }) {
    final $result = create();
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  responseHello._() : super();
  factory responseHello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory responseHello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'responseHello', package: const $pb.PackageName(_omitMessageNames ? '' : 'Hello'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'response')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  responseHello clone() => responseHello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  responseHello copyWith(void Function(responseHello) updates) => super.copyWith((message) => updates(message as responseHello)) as responseHello;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static responseHello create() => responseHello._();
  responseHello createEmptyInstance() => create();
  static $pb.PbList<responseHello> createRepeated() => $pb.PbList<responseHello>();
  @$core.pragma('dart2js:noInline')
  static responseHello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<responseHello>(create);
  static responseHello? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get response => $_getBF(0);
  @$pb.TagNumber(1)
  set response($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
