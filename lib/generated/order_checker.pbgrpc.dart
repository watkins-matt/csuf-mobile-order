///
//  Generated code. Do not modify.
//  source: proto/order_checker.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cart.pb.dart' as $2;
import 'order_checker.pb.dart' as $3;
export 'order_checker.pb.dart';

class OrderCheckerClient extends $grpc.Client {
  static final _$orderReady =
      $grpc.ClientMethod<$2.CartSubmitRequest, $3.OrderStatus>(
          '/mobileorder.OrderChecker/OrderReady',
          ($2.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.OrderStatus.fromBuffer(value));

  OrderCheckerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.OrderStatus> orderReady($2.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$orderReady, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class OrderCheckerServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.OrderChecker';

  OrderCheckerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CartSubmitRequest, $3.OrderStatus>(
        'OrderReady',
        orderReady_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CartSubmitRequest.fromBuffer(value),
        ($3.OrderStatus value) => value.writeToBuffer()));
  }

  $async.Future<$3.OrderStatus> orderReady_Pre($grpc.ServiceCall call,
      $async.Future<$2.CartSubmitRequest> request) async {
    return orderReady(call, await request);
  }

  $async.Future<$3.OrderStatus> orderReady(
      $grpc.ServiceCall call, $2.CartSubmitRequest request);
}
