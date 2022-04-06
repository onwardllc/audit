FROM klakegg/hugo:ubuntu

COPY . /src
WORKDIR /src

RUN apt update \
  && apt install -y curl \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt update \
  && apt install -y nodejs \
  && npm install -g \
  && npm run build

EXPOSE 1313
