## Flutter で gRPCを使う

通常は GOでサーバを実装するが、Dartでも可能。

4種類のgRPCのサンプルプログラム

### 

### grpc 生成
```sh
protoc -I gRPC/ gRPC/reserve.proto --dart_out=grpc:gRPC
```
