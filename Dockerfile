FROM debian:10
LABEL MAINTAINER="https://github.com/KLU-902/KLU_PHISH.git"

WORKDIR KLU_PHISH/
ADD . /KLU_PHISH

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./KLU_PHISH.sh"]
