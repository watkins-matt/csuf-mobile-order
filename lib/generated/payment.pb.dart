///
//  Generated code. Do not modify.
//  source: proto/payment.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PaymentInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PaymentInfo', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOS(1, 'encryptedCreditCardInfo', protoName: 'encryptedCreditCardInfo')
    ..a<$core.double>(2, 'amount', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  PaymentInfo._() : super();
  factory PaymentInfo() => create();
  factory PaymentInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PaymentInfo clone() => PaymentInfo()..mergeFromMessage(this);
  PaymentInfo copyWith(void Function(PaymentInfo) updates) => super.copyWith((message) => updates(message as PaymentInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentInfo create() => PaymentInfo._();
  PaymentInfo createEmptyInstance() => create();
  static $pb.PbList<PaymentInfo> createRepeated() => $pb.PbList<PaymentInfo>();
  @$core.pragma('dart2js:noInline')
  static PaymentInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentInfo>(create);
  static PaymentInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get encryptedCreditCardInfo => $_getSZ(0);
  @$pb.TagNumber(1)
  set encryptedCreditCardInfo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncryptedCreditCardInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncryptedCreditCardInfo() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class PaymentResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PaymentResult', package: const $pb.PackageName('mobileorder'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..hasRequiredFields = false
  ;

  PaymentResult._() : super();
  factory PaymentResult() => create();
  factory PaymentResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PaymentResult clone() => PaymentResult()..mergeFromMessage(this);
  PaymentResult copyWith(void Function(PaymentResult) updates) => super.copyWith((message) => updates(message as PaymentResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentResult create() => PaymentResult._();
  PaymentResult createEmptyInstance() => create();
  static $pb.PbList<PaymentResult> createRepeated() => $pb.PbList<PaymentResult>();
  @$core.pragma('dart2js:noInline')
  static PaymentResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentResult>(create);
  static PaymentResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

