import 'package:grpc/grpc.dart';

import 'gRPC/hello.pbgrpc.dart';

class grpcClient {
  late ClientChannel channel;
  late HelloClient client;
  String address;
  int port;

  grpcClient(this.address,this.port){
    // エンドポイントへのチャンネルを用意
    channel = ClientChannel(
      address, // サーバの IP アドレス（またはホスト名）を指定すること
      port: port,
      options: const ChannelOptions(
        // TLS を無効にする
        credentials: ChannelCredentials.insecure(),
      ),
    );

    // クライアントの用意（クライアントスタブと呼ばれる）
    client = HelloClient(channel);
  }
}

// async* と yield を使ってリクエストの Stream を作る
Stream<callHello> requestStream() async* {
  List<String> name =["aaa","bbb","ccc","ddd"];
  for(String s in name){
    yield callHello()..hello= s;
  }
}

Future<void> main() async {
  grpcClient cl = grpcClient('localhost',50051);
  try {
    final res = await cl.client.sayHelllo(requestStream());

    await for(var r in res){
      print(r.response);
    }
  } catch(e){
    print('Caught error: $e');
  }

  finally{
    await cl.channel.shutdown();
  }
}