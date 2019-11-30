# Safari Dockloader

This docker will:
- Download the expected book based on `URL`
- Convert the book from EPUB to PDF.
- Save it on ./books folder on both PDF and EPUB format.

## Credits

It is based on this project https://github.com/nicohaenggi/SafariBooks-Downloader

## Usage Example

```Bash
docker run -v $(pwd)/books:/safari-dockloader/books \
    -e USER=<USER>             \
    -e PASS=<PWD>              \
    -e URL=<BOOK_URL>          \
    safari-dockloader                               
```