///
//  Generated code. Do not modify.
//  source: proto/recommendation.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'cart.pb.dart' as $1;
import 'menu.pb.dart' as $0;
export 'recommendation.pb.dart';

class RecommendationClient extends $grpc.Client {
  static final _$getRecommendation =
      $grpc.ClientMethod<$1.CartSubmitRequest, $0.MenuReply>(
          '/mobileorder.Recommendation/GetRecommendation',
          ($1.CartSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.MenuReply.fromBuffer(value));

  RecommendationClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.MenuReply> getRecommendation(
      $1.CartSubmitRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getRecommendation, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class RecommendationServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Recommendation';

  RecommendationServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CartSubmitRequest, $0.MenuReply>(
        'GetRecommendation',
        getRecommendation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CartSubmitRequest.fromBuffer(value),
        ($0.MenuReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.MenuReply> getRecommendation_Pre($grpc.ServiceCall call,
      $async.Future<$1.CartSubmitRequest> request) async {
    return getRecommendation(call, await request);
  }

  $async.Future<$0.MenuReply> getRecommendation(
      $grpc.ServiceCall call, $1.CartSubmitRequest request);
}
