
# Microhaplotopia Container

A Docker container for microhaplotype analysis using the microhaplotopia R package (emc-edits branch), built on Rocker/tidyverse.

## Quick Start

### Build the Container
```bash
docker build -t bnguyen29/microhaplotopia .
```

### Run Interactive R Session
```bash
docker run -it bnguyen29/microhaplotopia R
```

### Run with Volume Mount
```bash
docker run -v $(pwd):/workspace -w /workspace -it bnguyen29/microhaplotopia R
```

## Features

- **Base**: rocker/tidyverse:4.5.1
- **Main Package**: microhaplotopia (emc-edits branch)
- **Current microhaplotopia Commit**: 64b0b1fa0dd830856018d435bcf9c380c9370f66


## Testing

Verify the installation:
```bash
docker run --rm bnguyen29/microhaplotopia Rscript -e "library(microhaplotopia); packageVersion('microhaplotopia')"
```

Test with a basic command (replace with a real example if available):
```bash
docker run --rm bnguyen29/microhaplotopia Rscript -e "library(microhaplotopia); ?microhaplotopia"
```

## Build and Push to Docker Hub

For production deployment:
```bash
docker buildx build --platform linux/amd64 -t bnguyen29/microhaplotopia:latest --push .
```

## References

- [microhaplotopia GitHub (emc-edits branch)](https://github.com/eriqande/microhaplotopia/tree/emc-edits)
- [Rocker/tidyverse](https://hub.docker.com/r/rocker/tidyverse)
