# dotnetdocker

Dockerfile for building a docker image with **.NET Core** based on **Ubuntu 16.04**.
The image will also have ```Vim``` and ```Git``` installed, as well as my preferred ```vim``` setup.

Usage:
```
git clone https://github.com/dbonev/dotnetdocker.git
cd dotnetdocker
docker build .
```
After the build process finishes:
```
docker run -it <id of the image just built>
```
