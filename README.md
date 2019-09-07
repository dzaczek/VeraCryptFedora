# VeraCryptFedora
## About
Building from source VeaCrypt for Fedora 28/29/30
Compiling time around 30 minutes 

## Requirement
- Fedora 28+
- Docker

## Installation
You need working docker 

```sh
git clone https://github.com/dzaczek/VeraCryptFedora.git
cd VeraCryptFedora
docker build . -t veracrypt_env
docker run --name VC veracrypt_env
docker cp VC:/root/VersCryptCompile/VeraCrypt/src/Setup/Linux/ ./
./Linux/veracrypt--CustomEFI-setup-gui-x64
```

