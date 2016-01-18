# PS-Archiver
PowerShell script, zips each folder and creates a content file. For archiving job organized file servers. (I.e. print shops, design studios, etc...)

Depends on [7z](www.7-zip.org/download.html) installed on local computer.

Needs two parameters set: Source, Dest

If "source" looks like this:
`````
job1/
├── css/
│   ├── bootstrap.css
│   ├── bootstrap.min.css
│   ├── bootstrap-theme.css
│   └── bootstrap-theme.min.css
├── js/
│   ├── bootstrap.js
│   └── bootstrap.min.js
└── fonts/
    ├── glyphicons-halflings-regular.eot
    ├── glyphicons-halflings-regular.svg
    ├── glyphicons-halflings-regular.ttf
    └── glyphicons-halflings-regular.woff
``````
"Dest" will look like this:
``````
job1/
├── job1.zip
├── contents.txt
``````
"contents.txt" contains a line by line of every file zipped

You can adjust the compression level and format of conents.txt.
