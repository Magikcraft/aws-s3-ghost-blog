## Prerequisites

Have docker installed on your local machine

** a prebuilt container is hosted on docker hub if you wish to use it

`docker pull csumpter/aws-s3-ghost-blog:latest`

** this container design is used in a larger aws cloudformation build that can be found here:

https://github.com/csumpter/ghost-cloudformation


## Usage

Clone the repo down to your computer

`git clone git@github.com:csumpter/aws-s3-ghost-blog.git`

Copy the example-config.env example

`cp example-config.env config.env`

Fill in the environment variable values in the config.env file with your editor of choice

---

Build the container

`make build`

Run the container

`make run`