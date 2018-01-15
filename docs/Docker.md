# [Docker](https://www.docker.com/)

Here we cover basics of how to use Docker on any OS and to set-up it with our docker image.

As we are working in team we should all be able to reproduce results. Often it's hard to reproduce results because each of team member is using different OS (and version), different environment set-up etc. [Docker](https://www.docker.com/) to rescue.

Basically Docker is pre-installed image which can be run on any OS. It's like light weight VirtualBox. Good thing about Docker is that it works like Git. You can make changes and them commit them and upload for everyone to pull it with all history.

# First time run

## Installing Docker on your machine

[Download](https://docs.docker.com/engine/installation/) right Docker version for your machine and follow instructions in install it. After you have successfully installed Docker we need to pull ROS image in the Docker. After Docker is installed it's wise to inspect settings. If Docker is not running already then run Docker, it will automatically allocate default (configuration) resources. Open preferences and carefully inspect them. Perhaps the most important section is called "Advanced", there you can see resources Docker will you from your machine as well as path where it will store all pulled images.

Now we can start to use any public image. ROS already provide Ubuntu with pre installed ROS packages. Follow [instructions](http://wiki.ros.org/docker/Tutorials/Docker) to get started with ROS image and Docker. [This](https://www.youtube.com/watch?v=9xqekKwzmV8) YouTube video might be helpful.

## Setup

0. Register and login into Docker Hub
1. Pull image to default dokcer image directory: `docker pull naurislv/apple_picking_robot`
2. Run that image: `docker run -it naurislv/apple_picking_robot:latest`
3. Now you are in Docker image terminal. Navigate to home directory: `cd /home/apple_picker`
4. Clone Git repository: `git clone https://github.com/Naurislv/apple_picking_robot.git`

# Docker Help

As previously mention images in Docker works similar to repositories in Git. You pull them, you run them, make changes and then commit them. All your commits and versions are stored and can be seen using `docker images` CLI command.

## Running, printing and removing images and containers

To run docker image you can use either Repository name or Image Id which (from `docker images` output). Example: `docker run -it ros`.

Once image is running Docker creates container. All running containers can be seen by executing `docker ps`. If you want to see also stopped containers execute `docker ps -a`.

From time to time you may want to remove images and / or containers. To remove single image run `docker rmi IMAGE_ID`, to remove all containers run `docker rm $(docker ps -aq)`.

## Committing changes to images

Here is official documentation and example of [commit command for Docker](https://docs.docker.com/engine/reference/commandline/commit/)

Example: `docker commit 1222f43418c4 ros/apple_picker:v0.2`

## Pushing changes

[Tutorial](https://docs.docker.com/docker-cloud/builds/push-images/)

Example:

1. `docker tag ros/apple_picker:v0.3 naurislv/apple_picking_robot:latest`
2. `docker push naurislv/apple_picking_robot:latest`

## Useful Docker commands