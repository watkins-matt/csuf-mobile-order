///
//  Generated code. Do not modify.
//  source: proto/cart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'menu.pb.dart' as $0;

class CartModifyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CartModifyRequest', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOS(1, 'clientId', protoName: 'clientId')
    ..aOM<$0.MenuItem>(2, 'item', subBuilder: $0.MenuItem.create)
    ..hasRequiredFields = false
  ;

  CartModifyRequest._() : super();
  factory CartModifyRequest() => create();
  factory CartModifyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartModifyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CartModifyRequest clone() => CartModifyRequest()..mergeFromMessage(this);
  CartModifyRequest copyWith(void Function(CartModifyRequest) updates) => super.copyWith((message) => updates(message as CartModifyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CartModifyRequest create() => CartModifyRequest._();
  CartModifyRequest createEmptyInstance() => create();
  static $pb.PbList<CartModifyRequest> createRepeated() => $pb.PbList<CartModifyRequest>();
  @$core.pragma('dart2js:noInline')
  static CartModifyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartModifyRequest>(create);
  static CartModifyRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);

  @$pb.TagNumber(2)
  $0.MenuItem get item => $_getN(1);
  @$pb.TagNumber(2)
  set item($0.MenuItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearItem() => clearField(2);
  @$pb.TagNumber(2)
  $0.MenuItem ensureItem() => $_ensure(1);
}

class CartCreateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CartCreateRequest', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CartCreateRequest._() : super();
  factory CartCreateRequest() => create();
  factory CartCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CartCreateRequest clone() => CartCreateRequest()..mergeFromMessage(this);
  CartCreateRequest copyWith(void Function(CartCreateRequest) updates) => super.copyWith((message) => updates(message as CartCreateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CartCreateRequest create() => CartCreateRequest._();
  CartCreateRequest createEmptyInstance() => create();
  static $pb.PbList<CartCreateRequest> createRepeated() => $pb.PbList<CartCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static CartCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartCreateRequest>(create);
  static CartCreateRequest _defaultInstance;
}

class CartSubmitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CartSubmitRequest', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOS(1, 'clientId', protoName: 'clientId')
    ..hasRequiredFields = false
  ;

  CartSubmitRequest._() : super();
  factory CartSubmitRequest() => create();
  factory CartSubmitRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartSubmitRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CartSubmitRequest clone() => CartSubmitRequest()..mergeFromMessage(this);
  CartSubmitRequest copyWith(void Function(CartSubmitRequest) updates) => super.copyWith((message) => updates(message as CartSubmitRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CartSubmitRequest create() => CartSubmitRequest._();
  CartSubmitRequest createEmptyInstance() => create();
  static $pb.PbList<CartSubmitRequest> createRepeated() => $pb.PbList<CartSubmitRequest>();
  @$core.pragma('dart2js:noInline')
  static CartSubmitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartSubmitRequest>(create);
  static CartSubmitRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);
}

class CartSubmitResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CartSubmitResponse', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CartSubmitResponse._() : super();
  factory CartSubmitResponse() => create();
  factory CartSubmitResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartSubmitResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CartSubmitResponse clone() => CartSubmitResponse()..mergeFromMessage(this);
  CartSubmitResponse copyWith(void Function(CartSubmitResponse) updates) => super.copyWith((message) => updates(message as CartSubmitResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CartSubmitResponse create() => CartSubmitResponse._();
  CartSubmitResponse createEmptyInstance() => create();
  static $pb.PbList<CartSubmitResponse> createRepeated() => $pb.PbList<CartSubmitResponse>();
  @$core.pragma('dart2js:noInline')
  static CartSubmitResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartSubmitResponse>(create);
  static CartSubmitResponse _defaultInstance;
}

class CartContents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CartContents', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..pc<$0.MenuItem>(1, 'items', $pb.PbFieldType.PM, subBuilder: $0.MenuItem.create)
    ..a<$core.double>(2, 'total', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  CartContents._() : super();
  factory CartContents() => create();
  factory CartContents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartContents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CartContents clone() => CartContents()..mergeFromMessage(this);
  CartContents copyWith(void Function(CartContents) updates) => super.copyWith((message) => updates(message as CartContents));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CartContents create() => CartContents._();
  CartContents createEmptyInstance() => create();
  static $pb.PbList<CartContents> createRepeated() => $pb.PbList<CartContents>();
  @$core.pragma('dart2js:noInline')
  static CartContents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartContents>(create);
  static CartContents _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.MenuItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get total => $_getN(1);
  @$pb.TagNumber(2)
  set total($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

