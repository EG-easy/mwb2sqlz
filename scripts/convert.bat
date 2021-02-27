@echo off

set f=%1

if exist %f% (
  docker run -v %cd%/files:/home/files -it --rm m2s /home/vendor/bin/mysql-workbench-schema-export %f% /home/files/output
) else (
 echo %f% does NOT exist.
)