FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.0

RUN gem install bucket_list --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bucket_list"]
CMD ["--help"]
