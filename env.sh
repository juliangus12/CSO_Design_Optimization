#!/bin/bash

# Function to display messages in red
echo_red() {
    echo -e "\033[0;31m$1\033[0m"
}

# Function to display messages in green
echo_green() {
    echo -e "\033[0;32m$1\033[0m"
}


# Function to check and install a package
check_and_install() {
    local package=$1
    if ! dpkg -s "$package" >/dev/null 2>&1; then
        if sudo apt-get install -y "$package"; then
            echo_green "$package installed successfully."
        else
            echo_red "Failed to install $package."
        fi
    fi
}

# Update package lists
if sudo apt-get update >/dev/null 2>&1; then
    echo_green "Package lists updated."
else
    echo_red "Failed to update package lists."
fi

# Check and install required packages
check_and_install r-base-core
check_and_install libxml2-dev
check_and_install libnetcdf-dev
check_and_install netcdf-bin
