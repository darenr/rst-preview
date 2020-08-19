FROM python:3.7-alpine

RUN apk add --update make zip

RUN pip install autodoc \
  sphinx \
  sphinxcontrib-napoleon \
  sphinx-rtd-theme

ADD Makefile /docs/Makefile
WORKDIR /docs
CMD ["make", "zip"]
