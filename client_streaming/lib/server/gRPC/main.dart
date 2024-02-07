import 'dart:async';

import 'package:grpc/grpc.dart';

import '../gRPC/hello.pbgrpc.dart';

class hello extends HelloServiceBase {
  @override
  Future<responseHello> sayHelllo(
      ServiceCall call, Stream<callHello> request) async {

    // Receive data from Client
    await for (var req in request) {
      print('Received: ${req.hello}');
    }

    // Response send to Client
    return responseHello()..response = true;
  }
}

Future<void> main() async {
  final server = Server([hello()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}