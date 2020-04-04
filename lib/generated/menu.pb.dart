///
//  Generated code. Do not modify.
//  source: proto/menu.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MenuRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MenuRequest', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MenuRequest._() : super();
  factory MenuRequest() => create();
  factory MenuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MenuRequest clone() => MenuRequest()..mergeFromMessage(this);
  MenuRequest copyWith(void Function(MenuRequest) updates) => super.copyWith((message) => updates(message as MenuRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuRequest create() => MenuRequest._();
  MenuRequest createEmptyInstance() => create();
  static $pb.PbList<MenuRequest> createRepeated() => $pb.PbList<MenuRequest>();
  @$core.pragma('dart2js:noInline')
  static MenuRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuRequest>(create);
  static MenuRequest _defaultInstance;
}

class MenuReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MenuReply', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..pc<MenuItem>(1, 'items', $pb.PbFieldType.PM, subBuilder: MenuItem.create)
    ..hasRequiredFields = false
  ;

  MenuReply._() : super();
  factory MenuReply() => create();
  factory MenuReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MenuReply clone() => MenuReply()..mergeFromMessage(this);
  MenuReply copyWith(void Function(MenuReply) updates) => super.copyWith((message) => updates(message as MenuReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuReply create() => MenuReply._();
  MenuReply createEmptyInstance() => create();
  static $pb.PbList<MenuReply> createRepeated() => $pb.PbList<MenuReply>();
  @$core.pragma('dart2js:noInline')
  static MenuReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuReply>(create);
  static MenuReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MenuItem> get items => $_getList(0);
}

class MenuItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MenuItem', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..a<$core.double>(2, 'price', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  MenuItem._() : super();
  factory MenuItem() => create();
  factory MenuItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MenuItem clone() => MenuItem()..mergeFromMessage(this);
  MenuItem copyWith(void Function(MenuItem) updates) => super.copyWith((message) => updates(message as MenuItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuItem create() => MenuItem._();
  MenuItem createEmptyInstance() => create();
  static $pb.PbList<MenuItem> createRepeated() => $pb.PbList<MenuItem>();
  @$core.pragma('dart2js:noInline')
  static MenuItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuItem>(create);
  static MenuItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);
}

