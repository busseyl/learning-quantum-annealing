# Learning Quantum Annealing
Using D-Wave's Leap cloud

## Installation
```
docker build . -t dwave:latest
```
> Alternatively, use the helper script to build: `./build.sh`

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

## Running commands

`./dwave.sh <command>`

> Example:
```
app:learning-quantum-annealing lucas$ ./dwave.sh ping
Using endpoint: https://cloud.dwavesys.com/sapi
Using solver: DW_2000Q_2
Submitted problem ID: ffb0ced5-0350-45af-9ac3-c15de7dd01b7

Wall clock time:
 * Solver definition fetch: 372.859 ms
 * Problem submit and results fetch: 369.102 ms
 * Total: 741.961 ms

QPU timing:
 * total_real_time = 7721 us
 * qpu_access_overhead_time = 1683 us
 * anneal_time_per_run = 20 us
 * post_processing_overhead_time = 248 us
 * qpu_sampling_time = 164 us
 * readout_time_per_run = 123 us
 * qpu_delay_time_per_sample = 21 us
 * qpu_anneal_time_per_sample = 20 us
 * total_post_processing_time = 248 us
 * qpu_programming_time = 7558 us
 * run_time_chip = 164 us
 * qpu_access_time = 7721 us
 * qpu_readout_time_per_sample = 123 us
 ```

## Reference
* https://github.com/dwavesystems/dwave-ocean-sdk
* https://docs.ocean.dwavesys.com/en/latest/overview/install.html