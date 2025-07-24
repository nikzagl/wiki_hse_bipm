# wiki_hse_bipm
non official wiki of https://nnov.hse.ru/bipm/ 

## Rendering(needs docker installed)
```bash
docker build -t wiki-hse-docs .
docker run -it -v ./docs/build:/docs/build  wiki-hse-docs
```
Result files are located in ./build
