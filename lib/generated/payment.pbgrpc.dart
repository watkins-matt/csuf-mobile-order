///
//  Generated code. Do not modify.
//  source: proto/payment.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'payment.pb.dart' as $3;
export 'payment.pb.dart';

class PaymentClient extends $grpc.Client {
  static final _$submit = $grpc.ClientMethod<$3.PaymentInfo, $3.PaymentResult>(
      '/mobileorder.Payment/Submit',
      ($3.PaymentInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PaymentResult.fromBuffer(value));

  PaymentClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.PaymentResult> submit($3.PaymentInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$submit, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Payment';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.PaymentInfo, $3.PaymentResult>(
        'Submit',
        submit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PaymentInfo.fromBuffer(value),
        ($3.PaymentResult value) => value.writeToBuffer()));
  }

  $async.Future<$3.PaymentResult> submit_Pre(
      $grpc.ServiceCall call, $async.Future<$3.PaymentInfo> request) async {
    return submit(call, await request);
  }

  $async.Future<$3.PaymentResult> submit(
      $grpc.ServiceCall call, $3.PaymentInfo request);
}
