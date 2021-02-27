## MySQL Workbench To Sequelize
This is a tool to convert from MySQL Workbench file to Sequelize Migration files.

*requirement*
- docker
- make

## How to use
1. Put .mwb file to `files/input/` folder
2. Build docker image with the command `make build`
3. Convert with the command `sh scripts/convert.sh files/input/filenamehere.mwb` or `"./scripts/convert.bat" files/input/filenamehere.mwb` in windows

Now you can get migration files in `files/output`.
