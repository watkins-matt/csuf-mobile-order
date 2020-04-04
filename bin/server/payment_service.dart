import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/payment.pbgrpc.dart';

class PaymentService extends PaymentServiceBase {
  @override
  Future<PaymentResult> submit(ServiceCall call, PaymentInfo payment) async {
    // Call into backend code to process payment using information
    // passed in the PaymentInfo payment parameter.

    // Return whether or not the payment cleared successfully
    PaymentResult result = PaymentResult()..success = true;
    return result;
  }
}
