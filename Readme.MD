## build
docker build -t convertor .

## run
docker run -v $PWD/images:/app/images -v $PWD/output:/app/output convertor images