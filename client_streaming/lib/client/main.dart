import 'package:grpc/grpc.dart';

import 'gRPC/hello.pbgrpc.dart';

// async* と yield を使ってリクエストの Stream を作る
Stream<callHello> requestStream() async* {
  List<String> name =["aaa","bbb","ccc","ddd"];
  for(String s in name){
    yield callHello()..hello= s;
  }
}

Future<void> main() async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final client = HelloClient(channel);
  try {
    final res = await client.sayHelllo(requestStream());
    print(res.response);
  } catch(e){
    print('Caught error: $e');
  }
  finally{
    await channel.shutdown();
  }
}