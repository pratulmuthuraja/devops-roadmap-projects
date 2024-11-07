# Server Performance Stats

[Project Link](https://roadmap.sh/projects/server-stats)

Part of [DevOps Roadmap](https://roadmap.sh/devops) Projects by [roadmap.sh](https://roadmap.sh/)
Write a script to analyse basic server performance stats.

Goal of this project is to write a script to analyse server performance stats.

## Project Requirements

You are required to write a script server-stats.sh that can analyse basic server performance stats. You should be able to run the script on any Linux server and it should give you the following stats:

- Total CPU usage
- Total memory usage (Free vs Used including percentage)
- Total disk usage (Free vs Used including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.

## Setup & Usage

Requirements: Any Linux Environment (Ubuntu, PopOS!, WSL, etc.)

### Setup

1. Navigate to the folder you want to clone the repository into.

```bash
git clone https://github.com/pratulmuthuraja/server-performance-stats.git
cd server-performance-stats
```

2. Make file executable

```bash
sudo chmod +x server-stats.sh
```

### Usage

1. Run script

```bash
./server-stats.sh
```

