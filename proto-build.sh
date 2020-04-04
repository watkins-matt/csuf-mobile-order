protoc --dart_out=grpc:./lib/generated -I./ ./proto/*.proto
mv ./lib/generated/proto/*.dart ./lib/generated
rm -rf ./lib/generated/proto
