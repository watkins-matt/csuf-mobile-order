///
//  Generated code. Do not modify.
//  source: proto/cart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cart.pb.dart' as $1;
export 'cart.pb.dart';

class CartClient extends $grpc.Client {
  static final _$add =
      $grpc.ClientMethod<$1.CartModifyRequest, $1.CartContents>(
          '/mobileorder.Cart/Add',
          ($1.CartModifyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.CartContents.fromBuffer(value));
  static final _$remove =
      $grpc.ClientMethod<$1.CartModifyRequest, $1.CartContents>(
          '/mobileorder.Cart/Remove',
          ($1.CartModifyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.CartContents.fromBuffer(value));
  static final _$submit =
      $grpc.ClientMethod<$1.CartSubmitRequest, $1.CartContents>(
          '/mobileorder.Cart/Submit',
          ($1.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.CartContents.fromBuffer(value));
  static final _$get =
      $grpc.ClientMethod<$1.CartSubmitRequest, $1.CartContents>(
          '/mobileorder.Cart/Get',
          ($1.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.CartContents.fromBuffer(value));

  CartClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.CartContents> add($1.CartModifyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$add, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CartContents> remove($1.CartModifyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$remove, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CartContents> submit($1.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$submit, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.CartContents> get($1.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$get, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class CartServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Cart';

  CartServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CartModifyRequest, $1.CartContents>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CartModifyRequest.fromBuffer(value),
        ($1.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CartModifyRequest, $1.CartContents>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CartModifyRequest.fromBuffer(value),
        ($1.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CartSubmitRequest, $1.CartContents>(
        'Submit',
        submit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CartSubmitRequest.fromBuffer(value),
        ($1.CartContents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CartSubmitRequest, $1.CartContents>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CartSubmitRequest.fromBuffer(value),
        ($1.CartContents value) => value.writeToBuffer()));
  }

  $async.Future<$1.CartContents> add_Pre($grpc.ServiceCall call,
      $async.Future<$1.CartModifyRequest> request) async {
    return add(call, await request);
  }

  $async.Future<$1.CartContents> remove_Pre($grpc.ServiceCall call,
      $async.Future<$1.CartModifyRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$1.CartContents> submit_Pre($grpc.ServiceCall call,
      $async.Future<$1.CartSubmitRequest> request) async {
    return submit(call, await request);
  }

  $async.Future<$1.CartContents> get_Pre($grpc.ServiceCall call,
      $async.Future<$1.CartSubmitRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$1.CartContents> add(
      $grpc.ServiceCall call, $1.CartModifyRequest request);
  $async.Future<$1.CartContents> remove(
      $grpc.ServiceCall call, $1.CartModifyRequest request);
  $async.Future<$1.CartContents> submit(
      $grpc.ServiceCall call, $1.CartSubmitRequest request);
  $async.Future<$1.CartContents> get(
      $grpc.ServiceCall call, $1.CartSubmitRequest request);
}
