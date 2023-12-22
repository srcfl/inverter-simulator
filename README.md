# Inverter simulator
This is a primitive mock inverter simulator for testing. Values are hardcoded and not based on any real data. It is intended to be used with Srcful Energy Gateway for testing purposes.


# How to use
Python3 is required to run this. 

```bash
python3 simulator.py -H 0.0.0.0
```

Default port is 502. You can change it with -p option. Ports below 1024 require root privileges.

```bash
python3 simulator.py -H 0.0.0.0 -p 502
```

Supported types are SolarEdge (default), Sungrow (and hybrid), Huawei and Growatt. You can change it with -t option.

```bash
python3 simulator.py -H 0.0.0.0 -t huawei
```

Running this using docker is also possible. You can use the following command to run it with default options.

```bash
docker build -t modbus-simulator . && docker run -p 502:502 modbus-simulator
```