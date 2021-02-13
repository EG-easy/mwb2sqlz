echo ${1:?'Please set *.msw file PATH'}

if [ ! -e $1  ]; then
	  echo "File not exists."
		exit
fi

docker run -v $PWD/files:/home/files -it --rm m2s /home/vendor/bin/mysql-workbench-schema-export $1 /home/files/output
