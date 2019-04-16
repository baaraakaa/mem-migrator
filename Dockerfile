FROM python:3.7

RUN pip install pipenv

RUN mkdir -p /script
COPY . /script
RUN chgrp -R 0 /script && chmod -R g+rwx /script
WORKDIR /script

# pipenv install needs these
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# install dependencies
RUN pipenv install --system --deploy --ignore-pipfile

# enter
CMD ["python","/script/make_collections.py"]
# CMD ["./run.sh"]
