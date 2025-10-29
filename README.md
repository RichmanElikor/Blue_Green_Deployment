# Blue-Green Deployment Project

## Overview

This project implements a **Blue-Green deployment** using Docker Compose and Nginx.  
It runs **two identical Node.js services**:

- **Blue** → active by default  
- **Green** → backup

Nginx routes traffic and automatically fails over to the backup if the primary fails.

---

## Endpoints

| Endpoint                         | Description |
|---------------------------------|------------|
| `GET /version`                   | Returns JSON with headers: `X-App-Pool` and `X-Release-Id` |
| `POST /chaos/start?mode=error`   | Simulates downtime (500 error) on the target app |
| `POST /chaos/start?mode=timeout` | Simulates timeout on the target app |
| `POST /chaos/stop`               | Stops chaos simulation |
| `GET /healthz`                   | Returns app liveness |

---

## Project Structure

