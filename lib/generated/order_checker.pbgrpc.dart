///
//  Generated code. Do not modify.
//  source: proto/order_checker.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cart.pb.dart' as $1;
import 'order_checker.pb.dart' as $2;
export 'order_checker.pb.dart';

class OrderCheckerClient extends $grpc.Client {
  static final _$orderReady =
      $grpc.ClientMethod<$1.CartSubmitRequest, $2.OrderStatus>(
          '/mobileorder.OrderChecker/OrderReady',
          ($1.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.OrderStatus.fromBuffer(value));

  OrderCheckerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.OrderStatus> orderReady($1.CartSubmitRequest request,
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
    $addMethod($grpc.ServiceMethod<$1.CartSubmitRequest, $2.OrderStatus>(
        'OrderReady',
        orderReady_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CartSubmitRequest.fromBuffer(value),
        ($2.OrderStatus value) => value.writeToBuffer()));
  }

  $async.Future<$2.OrderStatus> orderReady_Pre($grpc.ServiceCall call,
      $async.Future<$1.CartSubmitRequest> request) async {
    return orderReady(call, await request);
  }

  $async.Future<$2.OrderStatus> orderReady(
      $grpc.ServiceCall call, $1.CartSubmitRequest request);
}
