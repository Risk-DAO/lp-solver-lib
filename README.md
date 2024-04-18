# Foreword

The following code works on Unix. It has not been tested on Windows.

# Installation

Please check the `install_glpk.sh` file to install GLPK.

To install the npm dependencies of the project:
```
cd lib
npm i
```

# Dependencies

You will need npm in a precise version:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh
nvm install v20.12.0
```

And the typescript compiler:

```
sudo apt install node-typescript
tsc --init
```
