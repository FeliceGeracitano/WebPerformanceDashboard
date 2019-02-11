
#!/bin/bash
cd "$(dirname "$0")"/../deployment/gcp
kubectl create ns webperf
kubectl apply -f influxdb.yaml
kubectl apply -f chronograf.yaml
kubectl apply -f grafana.yaml
kubectl apply -f lighthouse.yaml
kubectl apply -f cronjob.yaml