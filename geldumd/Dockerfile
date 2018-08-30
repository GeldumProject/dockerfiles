FROM geldum/geldum:latest

ADD entrypoint.sh /geldum/geldumd-entrypoint.sh

RUN ln -s /geldum/geldumd-entrypoint.sh /bin/geldumd

ENTRYPOINT [ "geldumd" ]
