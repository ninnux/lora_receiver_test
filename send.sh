NODE=$1
DATA=$2
mosquitto_pub -t application/1/node/$NODE/tx -u loraserve_ns -P loraserver_ns -h 127.0.0.1 -m  '{"reference": "culo1234", "confirmed": true, "fPort":1, "data":"'$(echo $DATA | base64)'"}'
