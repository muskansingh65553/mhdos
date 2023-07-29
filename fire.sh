#!/bin/bash

# Your Python command
command="python3 start.py AVB https://www.gov-relations.com/ 1 1000 http.txt 100 60"

# Number of times to run the command
num_iterations=500  # Change this to the number of iterations you want

# Time delay between each execution (in seconds)
delay_between_iterations=100  # Change this to the desired delay time

# Function to run the command
run_command() {
    $command
}

# Loop to run the command multiple times
for ((i=0; i<$num_iterations; i++)); do
    # Incrementing the index for human-readable output (i starts from 0)
    index=$(($i+1))

    # Call the function to run the command
    run_command

    # Print status message
    echo "Run $index done."

    # Add a delay between iterations (except for the last iteration)
    if [ $i -lt $(($num_iterations-1)) ]; then
        sleep $delay_between_iterations
    fi
done

# After the loop is finished
echo "All iterations have completed."
