///
//  Generated code. Do not modify.
//  source: proto/availability.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AvailabilityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AvailabilityRequest', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AvailabilityRequest._() : super();
  factory AvailabilityRequest() => create();
  factory AvailabilityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AvailabilityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AvailabilityRequest clone() => AvailabilityRequest()..mergeFromMessage(this);
  AvailabilityRequest copyWith(void Function(AvailabilityRequest) updates) => super.copyWith((message) => updates(message as AvailabilityRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AvailabilityRequest create() => AvailabilityRequest._();
  AvailabilityRequest createEmptyInstance() => create();
  static $pb.PbList<AvailabilityRequest> createRepeated() => $pb.PbList<AvailabilityRequest>();
  @$core.pragma('dart2js:noInline')
  static AvailabilityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AvailabilityRequest>(create);
  static AvailabilityRequest _defaultInstance;
}

class AvailabilityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AvailabilityResponse', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..hasRequiredFields = false
  ;

  AvailabilityResponse._() : super();
  factory AvailabilityResponse() => create();
  factory AvailabilityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AvailabilityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AvailabilityResponse clone() => AvailabilityResponse()..mergeFromMessage(this);
  AvailabilityResponse copyWith(void Function(AvailabilityResponse) updates) => super.copyWith((message) => updates(message as AvailabilityResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AvailabilityResponse create() => AvailabilityResponse._();
  AvailabilityResponse createEmptyInstance() => create();
  static $pb.PbList<AvailabilityResponse> createRepeated() => $pb.PbList<AvailabilityResponse>();
  @$core.pragma('dart2js:noInline')
  static AvailabilityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AvailabilityResponse>(create);
  static AvailabilityResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

