# Foreword

The following code works on Windows. It has not been tested on Unix.

# Installation

Download http://sourceforge.net/projects/winglpk/
Unzip and put the w64 folder in the PATH

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
