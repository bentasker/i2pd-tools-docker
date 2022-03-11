FROM debian

RUN apt-get update && apt-get install -y git build-essential \
    && mkdir src \
    && mkdir /op \
    && cd src \
    && git clone --recursive https://github.com/purplei2p/i2pd-tools \
    && cd i2pd-tools \
    && sed -i -e "s/sudo//" -e "s/apt install/apt install -y/" dependencies.sh \
    && ./dependencies.sh \
    && make \
    && find /src/i2pd-tools/ -type f -executable ! -iname '*.sample' -exec cp {} /usr/local/bin/ \; \
    && apt-get remove -y build-essential \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /op
