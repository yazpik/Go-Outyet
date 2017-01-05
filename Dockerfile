#FROM golang:onbuild
FROM golang:1.6.0-alpine
CMD ["go-wrapper", "run", "-version=1.5"]
EXPOSE 8888
