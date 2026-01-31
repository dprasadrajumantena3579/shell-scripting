#!/bin/bash
timestamp=$(date)
echo "Current date: $timestamp"
start_time=$(date +%s)
echo "Script started at: $start_time"
sleep 10
end_time=$(date +%s)
echo "Script ended at: $end_time"
total_time=$((end_time -start_time))
echo "Total execution time: $total_time seconds"