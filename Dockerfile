FROM alpine

ARG USER

RUN apk add openssh
RUN id $USER || adduser -D $USER
USER $USER

CMD /bin/sh
