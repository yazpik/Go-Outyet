FROM golang:onbuild
CMD ["go-wrapper", "run", "-version=1.5"]
EXPOSE 8888
