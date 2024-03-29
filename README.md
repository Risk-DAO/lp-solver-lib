# Foreword

The following code works on UNIX. It has not been tested on Windows.

# Installation

Run the "glpk_install.sh" to download and install GLPK. You will need to enter your password to finalize the installation.
cd lib
npm i

# Dependencies

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh
nvm install v20.12.0

sudo apt install node-typescript
tsc --init