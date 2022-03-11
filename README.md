# i2pd-tools Docker Image
============================


[i2pd-tools](https://github.com/PurpleI2P/i2pd-tools) provides tooling that's useful when working with I2P or Eepsites.

But, having to build the tools whenever they're needed is a pain, so I've dockerised the build process.


### Getting the image

Either build from this repo

    docker build .
    
Or use the prebuilt one from [Docker hub](https://hub.docker.com/repository/docker/bentasker12/id2pd-tools). The examples below use the prebuilt


### Usage

Just run the container with whatever [i2pd-tools tool](https://github.com/PurpleI2P/i2pd-tools#tools-included) you need

To generate a key

    docker run --rm -v $PWD:/op bentasker12/id2pd-tools keygen mykey.dat
    
Generate a vanity address

    docker run --rm -v $PWD:/op bentasker12/id2pd-tools vain myname
    
Print information about a `.dat` file in the current working directory

    docker run --rm -v $PWD:/op bentasker12/id2pd-tools keyinfo myname.dat
    

    
### TODO

* The image is currently still quite large, strip it down
* Create a "help" command
