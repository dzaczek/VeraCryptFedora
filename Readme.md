README.md

docker build . -t veracrypt_env
dicker run --name VC veracrypt_env
docker cp VC:/root/VersCryptCompile/VeraCrypt/src/Setup/Linux/ ./
