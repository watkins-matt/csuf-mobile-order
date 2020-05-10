///
//  Generated code. Do not modify.
//  source: proto/menu.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'menu.pb.dart' as $1;
export 'menu.pb.dart';

class MenuClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$1.MenuRequest, $1.MenuReply>(
      '/mobileorder.Menu/Get',
      ($1.MenuRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.MenuReply.fromBuffer(value));

  MenuClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.MenuReply> get($1.MenuRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$get, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MenuServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Menu';

  MenuServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.MenuRequest, $1.MenuReply>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MenuRequest.fromBuffer(value),
        ($1.MenuReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.MenuReply> get_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MenuRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$1.MenuReply> get(
      $grpc.ServiceCall call, $1.MenuRequest request);
}
