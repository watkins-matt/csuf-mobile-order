///
//  Generated code. Do not modify.
//  source: proto/availability.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'availability.pb.dart' as $0;
export 'availability.pb.dart';

class AvailabilityClient extends $grpc.Client {
  static final _$available =
      $grpc.ClientMethod<$0.AvailabilityRequest, $0.AvailabilityResponse>(
          '/mobileorder.Availability/Available',
          ($0.AvailabilityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AvailabilityResponse.fromBuffer(value));

  AvailabilityClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.AvailabilityResponse> available(
      $0.AvailabilityRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$available, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AvailabilityServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileorder.Availability';

  AvailabilityServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AvailabilityRequest, $0.AvailabilityResponse>(
            'Available',
            available_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AvailabilityRequest.fromBuffer(value),
            ($0.AvailabilityResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AvailabilityResponse> available_Pre($grpc.ServiceCall call,
      $async.Future<$0.AvailabilityRequest> request) async {
    return available(call, await request);
  }

  $async.Future<$0.AvailabilityResponse> available(
      $grpc.ServiceCall call, $0.AvailabilityRequest request);
}
