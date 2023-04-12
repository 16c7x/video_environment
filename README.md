# video_environment

## Description

This project builds 3 Linux servers and 2 Windows servers for use in a demo video. It doesn't install anything as that's the aim of the video.

## How to use

* Add your own AWS key pair name to ```inputs.tf```.

* Add your local IP to ```inputs.tf```. To find your local ip, run the following command.

``` bash

ext_ip=`curl -s https://freedns.afraid.org/dynamic/check.php | grep REMOTE_ADDR |  awk '{print $3}'`; echo $ext_ip"/32"
```

* To build run ```terraform apply```.