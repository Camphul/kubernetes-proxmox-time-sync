#!/bin/bash
# Ensure parallel is installed
# brew install parallel
# List of Kubernetes nodes
nodes=("kube-node00.k8s.lsapps.nl" "kube-node01.k8s.lsapps.nl" "kube-node02.k8s.lsapps.nl" "kube-node03.k8s.lsapps.nl" "kube-node04.k8s.lsapps.nl" "kube-node05.k8s.lsapps.nl")

# Command to run on each node
run_command="date -u"

# Run the command in parallel on all nodes and capture the output
parallel -j 0 "ssh werk@{} \"$run_command\"" ::: "${nodes[@]}"
