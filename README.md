# Python Docker multi-stage example

An example implementation of the structure outlined in my blog post here: https://www.lutro.me/posts/python-docker-multi-stage-builds

To build and run the production image:

	$ docker build -t myproject .
	$ docker run --rm -it -p5000:5000 myproject

To build and run the development image:

	$ docker build --target=development -t myproject-dev .
	$ docker run --rm -it myproject-dev
