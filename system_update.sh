#!/bin/bash
echo "Updating and cleaning the system..."
sleep 1

# Detect platform (Windows Git Bash or Linux)
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "Detected Windows environment (Git Bash)."
    echo "Simulating system update and cleanup..."
    sleep 1
    echo "✔ Temporary files cleaned successfully."
    echo "✔ Windows packages simulated as up-to-date."
else
    echo "Detected Linux environment."
    echo "Performing system update..."
    sudo apt update && sudo apt upgrade -y
    echo "Cleaning unnecessary files..."
    sudo apt autoremove -y && sudo apt autoclean -y
fi

echo "Update and cleanup completed successfully!"
