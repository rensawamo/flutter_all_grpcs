import 'package:grpc/grpc.dart';

import 'gRPC/hello.pbgrpc.dart';

Future<void> main() async {

  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final client = HelloClient(channel);

  callHello d = callHello();
  d.hello = "remon";

  try {
    await for(var res in client.sayHelllo(d)){
      print(res.response);
    }
  } catch(e){
    print('Caught error: $e');
  }
  finally{
    // チャンネルのクローズ処理
    await channel.shutdown();
  }
}