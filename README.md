# imnodes-docker-builder

This repository contains the builder image for the [imnodes](https://github.com/Nelarius/imnodes) project.

## Running the `imnodes` build locally

```bash
docker run -it -v $(pwd):/project imnodes-docker-builder:latest "premake5 gmake && make config=debug all -j 4"
```
