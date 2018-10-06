# Learning Quantum Annealing
Using D-Wave's Leap cloud

## Installation
```
docker build . -t dwave:latest
```

## Configuring the container
```
docker run -it --rm --name dwave \
  -v "$PWD/src":/usr/local/src/dwave \
  -v "$PWD/.config/dwave/dwave.conf":/root/.config/dwave/dwave.conf \
  -w /usr/local/src/dwave \
  dwave:latest \
  dwave config create
```

> Get your API token from https://cloud.dwavesys.com/leap/

## Reference
* https://github.com/dwavesystems/dwave-ocean-sdk
* https://docs.ocean.dwavesys.com/en/latest/overview/install.html