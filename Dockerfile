FROM python:3.7-stretch AS build
RUN python3 -m venv /venv
ADD ./requirements /project/requirements
RUN /venv/bin/pip install -r /project/requirements/base.txt
ADD . /project
RUN /venv/bin/pip install /project


FROM build AS development
RUN /venv/bin/pip install -r /project/requirements/dev.txt
WORKDIR /project
CMD ["/venv/bin/pytest"]


FROM python:3.7-slim-stretch AS production
COPY --from=build /venv /venv
CMD ["/venv/bin/python3", "-m", "myproject"]
