import 'package:grpc/grpc.dart';
import 'gRPC/hello.pb.dart';
import 'gRPC/hello.pbgrpc.dart';

class hello extends HelloServiceBase {
  @override
  Future<responseHello> sayHelllo(ServiceCall call, callHello request) async {
    print(request.hello);
    return responseHello()..response= true;
  }

}

Future<void> main() async {
  final server = Server([hello()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}