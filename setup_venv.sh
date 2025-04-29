#!/bin/bash

initialize_python_virtual_environment() {
    local working_dir="${1}"
    local venv_dir="${working_dir}/.venv"

    printf "Setting up Python...\n"
    if [[ ! -d "${venv_dir}" ]]; then
        printf "Creating new Virtual Envirornment\n"
        /usr/bin/python3 -m venv "${venv_dir}"
    else
        printf "Using existing virtual environment\n"
    fi

    printf "Updating python dependencies...\n"
    "${venv_dir}/bin/python3" -m pip install --upgrade pip  --quiet
    "${venv_dir}/bin/python3" -m pip install --upgrade -r "${working_dir}/requirements.txt" --quiet
}

initialize_python_virtual_environment .
