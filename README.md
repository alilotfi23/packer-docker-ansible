# packer-docker-ansible
build docker images using ansible and packer
## Usage

Install builder 

```shell
packer init .
```

make sure your configuration is syntactically valid by using the packer validate command.

```shell
packer validate .
```

Build the image with the packer build command. 

```shell
packer build .
```
