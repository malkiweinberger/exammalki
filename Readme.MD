## build
docker build -t convertor .

## run
docker run -v $PWD/images:/app/images -v $PWD/output:/app/output -e pdfname=myconvert convertor images
