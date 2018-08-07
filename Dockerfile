FROM python:3.7-stretch AS build
RUN python3 -m venv /venv && /venv/bin/pip install -U pip setuptools
ADD ./requirements /project/requirements
ARG REQS=base
RUN /venv/bin/pip install -r /project/requirements/$REQS.txt
ADD . /project
RUN /venv/bin/pip install /project
WORKDIR /project


FROM python:3.7-slim-stretch AS production
COPY --from=build /venv /venv
EXPOSE 5000
CMD ["/venv/bin/python3", "-m", "myproject"]
