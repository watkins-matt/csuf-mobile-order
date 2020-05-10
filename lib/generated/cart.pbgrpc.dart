///
//  Generated code. Do not modify.
//  source: proto/cart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cart.pb.dart' as $2;
export 'cart.pb.dart';

class CartClient extends $grpc.Client {
  static final _$add =
      $grpc.ClientMethod<$2.CartModifyRequest, $2.CartContents>(
          '/mobileorder.Cart/Add',
          ($2.CartModifyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CartContents.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$2.CartModifyRequest, $2.CartContents>(
          '/mobileorder.Cart/Remove',
          ($2.CartModifyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CartContents.fromBuffer(value));
  static final _$submit =
      $grpc.ClientMethod<$2.CartSubmitRequest, $2.CartContents>(
          '/mobileorder.Cart/Submit',
          ($2.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CartContents.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$2.CartSubmitRequest, $2.CartContents>(
          '/mobileorder.Cart/Get',
          ($2.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CartContents.fromBuffer(value));
  static final _$status =
      $grpc.ClientMethod<$2.CartSubmitRequest, $2.OrderStatus>(
          '/mobileorder.Cart/Status',
          ($2.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.OrderStatus.fromBuffer(value));

  CartClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.CartContents> add($2.CartModifyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$add, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CartContents> remove($2.CartModifyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$remove, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CartContents> submit($2.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$submit, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.CartContents> get($2.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$get, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.OrderStatus> status($2.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$status, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class CartServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Cart';

  CartServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CartModifyRequest, $2.CartContents>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CartModifyRequest.fromBuffer(value),
        ($2.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CartModifyRequest, $2.CartContents>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CartModifyRequest.fromBuffer(value),
        ($2.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CartSubmitRequest, $2.CartContents>(
        'Submit',
        submit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CartSubmitRequest.fromBuffer(value),
        ($2.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CartSubmitRequest, $2.CartContents>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CartSubmitRequest.fromBuffer(value),
        ($2.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CartSubmitRequest, $2.OrderStatus>(
        'Status',
        status_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CartSubmitRequest.fromBuffer(value),
        ($2.OrderStatus value) => value.writeToBuffer()));
  }

  $async.Future<$2.CartContents> add_Pre($grpc.ServiceCall call,
      $async.Future<$2.CartModifyRequest> request) async {
    return add(call, await request);
  }

  $async.Future<$2.CartContents> remove_Pre($grpc.ServiceCall call,
      $async.Future<$2.CartModifyRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$2.CartContents> submit_Pre($grpc.ServiceCall call,
      $async.Future<$2.CartSubmitRequest> request) async {
    return submit(call, await request);
  }

  $async.Future<$2.CartContents> get_Pre($grpc.ServiceCall call,
      $async.Future<$2.CartSubmitRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$2.OrderStatus> status_Pre($grpc.ServiceCall call,
      $async.Future<$2.CartSubmitRequest> request) async {
    return status(call, await request);
  }

  $async.Future<$2.CartContents> add(
      $grpc.ServiceCall call, $2.CartModifyRequest request);
  $async.Future<$2.CartContents> remove(
      $grpc.ServiceCall call, $2.CartModifyRequest request);
  $async.Future<$2.CartContents> submit(
      $grpc.ServiceCall call, $2.CartSubmitRequest request);
  $async.Future<$2.CartContents> get(
      $grpc.ServiceCall call, $2.CartSubmitRequest request);
  $async.Future<$2.OrderStatus> status(
      $grpc.ServiceCall call, $2.CartSubmitRequest request);
}
