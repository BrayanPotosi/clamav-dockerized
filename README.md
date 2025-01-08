# ClamAV File Scanner

## Description
This project is a Dockerized application that scans files for viruses using the open-source antivirus software ClamAV. It mounts a local directory containing files to be scanned into the container and runs a scan on those files.

## Requirements
- Docker
- Docker Compose

## Usage
1. Clone the repository:
    ```sh
    git clone git@github.com:BrayanPotosi/clamav-dockerized.git
    cd clamav-dockerized
    ```

2. Build and start the Docker container:
    ```sh
    docker-compose build
    ```
3. Place the files you want to scan in the `files_to_scan` directory.
4. start the Docker container:
    ```sh
    docker-compose up
    ```
**Note:** It is not necessary to build the image every time files are added or removed from the `files_to_scan` directory, just run `docker-compose up`.

The scan results will be displayed in the container logs. The logs will show the scanned files listed, clean files will have an OK message, and infected files will have a description of the malware.

![](https://imgur.com/wXvwkJH.png)

