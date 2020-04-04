///
//  Generated code. Do not modify.
//  source: proto/menu.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'menu.pb.dart' as $0;
export 'menu.pb.dart';

class MenuClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$0.MenuRequest, $0.MenuReply>(
      '/mobileorder.Menu/Get',
      ($0.MenuRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MenuReply.fromBuffer(value));

  MenuClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.MenuReply> get($0.MenuRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$get, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MenuServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Menu';

  MenuServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MenuRequest, $0.MenuReply>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MenuRequest.fromBuffer(value),
        ($0.MenuReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.MenuReply> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MenuRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$0.MenuReply> get(
      $grpc.ServiceCall call, $0.MenuRequest request);
}
