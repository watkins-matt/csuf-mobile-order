///
//  Generated code. Do not modify.
//  source: proto/payment.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'payment.pb.dart' as $2;
export 'payment.pb.dart';

class PaymentClient extends $grpc.Client {
  static final _$submit = $grpc.ClientMethod<$2.PaymentInfo, $2.PaymentResult>(
      '/mobileorder.Payment/Submit',
      ($2.PaymentInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PaymentResult.fromBuffer(value));

  PaymentClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.PaymentResult> submit($2.PaymentInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$submit, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Payment';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.PaymentInfo, $2.PaymentResult>(
        'Submit',
        submit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PaymentInfo.fromBuffer(value),
        ($2.PaymentResult value) => value.writeToBuffer()));
  }

  $async.Future<$2.PaymentResult> submit_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PaymentInfo> request) async {
    return submit(call, await request);
  }

  $async.Future<$2.PaymentResult> submit(
      $grpc.ServiceCall call, $2.PaymentInfo request);
}
