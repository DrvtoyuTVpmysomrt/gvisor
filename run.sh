bazel build runsc
sudo rm -rf /tmp/runsc/*
sudo cp bazel-bin/runsc/runsc_/runsc /usr/local/bin/runsc
sudo systemctl reload docker
docker run --rm --runtime=runsc hello-world