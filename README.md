Rancher CLI & Compose for Docker
================================

Docker images to use rancher cli and rancher-compose easily.

## How to use

```
docker run -it --rm -e "RANCHER_URL=<RANCHER API>" -e "RANCHER_ACCESS_KEY=<ACCESS_KEY>" -e "RANCHER_SECRET_KEY=<SECRET_KEY>"  -v "$PWD:/workspace" jacopen/rancher-cli
```
