import 'dart:async';

import 'package:grpc/grpc.dart';

import 'gRPC/hello.pbgrpc.dart';

class hello extends HelloServiceBase {
  @override
  Stream<responseHello> sayHelllo(
      ServiceCall call, Stream<callHello> request) async* {
    List<bool> response = [false, true, false, true];

    await for (var req in request) {
      print('Received: ${req.hello}');
    }

    for (var s in response) {
      yield responseHello()..response = s;
    }
  }
}

Future<void> main() async {
  final server = Server([hello()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}