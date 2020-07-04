# autodesk-file-converter
Script for automatically converting a large set of files supported by Autodesk 3ds Max.

## configuration
Script requires 3 values to run:
* fRoot = root directory to look in for files (recursive)
* fPattern = filetype pattern to attempt to load (ie, `*.3ds`)
* fExt = filetype extension to export as (ie, ".fbx")

## how to use
Download `convert.ms` script and modify the values found under `-- test vars`. You may either enter your own values here directly or you may comment then out and pass-in through the command line tool such as follows:

`3dsmaxbatch convert.ms -mxsString fRoot:"C:\\Users\\Christopher Towner\\Desktop\\Models" -mxsString fPattern:"*.3ds" -mxsString fExt=".fbx"`

Otherwise, open the script in Autodesk with scripting->open-script, modify your values in MAXScript editor, and run tools->evaluate-all to run the script directly. **WARNING: the script will reset the current max file without prompting, please save any work before using!**
