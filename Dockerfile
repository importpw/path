FROM alpine:3.5
RUN apk add --no-cache curl bash
COPY . .
CMD bash ./path-test.sh
