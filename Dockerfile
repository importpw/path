FROM alpine:3.5
RUN apk add --no-cache curl bash
WORKDIR /public
COPY . .
RUN bash ./test.sh
RUN echo "All tests passed!" > index.txt
