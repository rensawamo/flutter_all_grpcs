import 'package:grpc/grpc.dart';

import '../Server/gRPC/hello.pbgrpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final client = HelloClient(channel);
  final request = callHello();
  request.hello = "ssssfdfdfdfdss";

  try {
    final response = await client.sayHelllo(request);
    print(response.response);
  } catch (e) {
    print('Caught error: $e');
  } finally {
    await channel.shutdown();
  }
}