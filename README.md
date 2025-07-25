# LLM Playground

This project provides an isolated development environment for experimenting with Large Language Models (LLMs) using modern Python tooling.

## Overview

The project uses:
- **uv**: A fast Python package manager for dependency management
- **Dev Containers**: Docker-based development environment for consistency and isolation
- **Jupyter Notebooks**: Interactive environment for LLM experimentation

## Setup

### Using Dev Containers (Recommended)

This project includes a dev container configuration that provides a fully isolated development environment. This ensures:
- Consistent Python version and dependencies across all development machines
- No conflicts with your local Python installation
- Easy cleanup - just delete the container when done

To use with VS Code:
1. Install the "Dev Containers" extension
2. Open this folder in VS Code
3. Click "Reopen in Container" when prompted (or use Command Palette > "Dev Containers: Reopen in Container")

### Manual Setup

If you prefer to run locally:
1. Install [uv](https://github.com/astral-sh/uv)
2. Run `uv sync` to install dependencies
3. Run `uv run jupyter lab` to start Jupyter

## Project Structure

- `/notebooks/` - Jupyter notebooks for experiments
- `main.py` - Main Python script
- `pyproject.toml` - Project configuration and dependencies
- `uv.lock` - Locked dependency versions for reproducibility
- `.devcontainer/` - Dev container configuration
- `Dockerfile` & `docker-compose.yml` - Container setup

## Benefits of This Setup

- **Isolation**: All dependencies are contained within the project/container
- **Reproducibility**: `uv.lock` ensures everyone uses the same package versions
- **Fast**: uv is significantly faster than pip for dependency resolution
- **Clean**: No global Python pollution; everything stays project-local