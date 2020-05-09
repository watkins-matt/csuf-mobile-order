import 'package:grpc/src/server/call.dart';
import 'package:mobile_ordering/generated/availability.pbgrpc.dart';

class AvailabilityService extends AvailabilityServiceBase {
  @override
  Future<AvailabilityResponse> available(
      ServiceCall call, AvailabilityRequest request) async {
    return AvailabilityResponse()..success = true;
  }
}
