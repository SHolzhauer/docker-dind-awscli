FROM docker:stable-dind

RUN apk add python2 curl unzip; \
  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"; \
  unzip awscli-bundle.zip; \
  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws; \
  aws --version;
