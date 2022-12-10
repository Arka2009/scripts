## Word Replacement in a folder
For example replace the word "ADDRLENGTH" in bash
```bash
grep -lRZ "ADDRLENGTH" . | xargs -0 -l sed -i -e 's/ADDRLENGTH/AddrLength/g'
```

## Enable perf counting
```sh
sudo sh -c 'echo -1 >/proc/sys/kernel/perf_event_paranoid'
```

## Monitor CPU Frequency
```sh
watch grep "cpu MHz" /proc/cpuinfo
```

## Generate perm and key file
```sh
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem
```
