#!/bin/bash

echo "Welcome to the Linux Process Introduction!"
echo "----------------------------------------"

# Function to display process information
function show_process_info() {
    echo ""
    echo "Current process ID (PID): $$"
    echo "Parent process ID (PPID): $PPID"
    echo "Current user: $(whoami)"
    echo "----------------------------------------"
}

# Show initial process info
show_process_info

# Create a child process
echo ""
echo "Creating a child process..."
sleep 10 &
child_pid=$!
echo "Child process created with PID: $child_pid"
echo "----------------------------------------"

# Show running processes
# echo ""
# echo "Showing running processes:"
# ps aux | head -n 5
# echo "----------------------------------------"

# Demonstrate process states
echo ""
echo "Demonstrating process states..."
echo "Running 'sleep 5' in the background"
sleep 5 &
bg_pid=$!

echo ""
echo "Process $bg_pid is running in the background. Waiting for it to complete..."

echo ""
wait $bg_pid

echo "Background process completed"
echo "----------------------------------------"

# Show process tree
echo ""
echo "Showing process tree:"
pstree -p
echo "----------------------------------------"

# Demonstrate process priority
echo ""
echo "Demonstrating process priority..."
nice -n 10 sleep 3 &
nice_pid=$!
echo "Started a low-priority process with PID: $nice_pid"
sleep 3
echo "----------------------------------------"

# Clean up
echo ""
echo "Cleaning up..."
kill $child_pid 2>/dev/null

echo ""
echo "Script completed. Explore more about Linux processes!"
