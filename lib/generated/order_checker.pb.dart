///
//  Generated code. Do not modify.
//  source: proto/order_checker.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class OrderStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderStatus', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOB(1, 'ready')
    ..hasRequiredFields = false
  ;

  OrderStatus._() : super();
  factory OrderStatus() => create();
  factory OrderStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OrderStatus clone() => OrderStatus()..mergeFromMessage(this);
  OrderStatus copyWith(void Function(OrderStatus) updates) => super.copyWith((message) => updates(message as OrderStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderStatus create() => OrderStatus._();
  OrderStatus createEmptyInstance() => create();
  static $pb.PbList<OrderStatus> createRepeated() => $pb.PbList<OrderStatus>();
  @$core.pragma('dart2js:noInline')
  static OrderStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderStatus>(create);
  static OrderStatus _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ready => $_getBF(0);
  @$pb.TagNumber(1)
  set ready($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReady() => $_has(0);
  @$pb.TagNumber(1)
  void clearReady() => clearField(1);
}

