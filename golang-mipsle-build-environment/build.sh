go env -w GOPROXY=https://goproxy.io,direct
CGO_ENABLED=1 go build -a -ldflags '-extldflags "-static"'