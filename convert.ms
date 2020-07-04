opts = maxOps.mxsCmdLineArgs

-- test var(s)
opts[#fRoot]="C:\\Users\\Christopher Towner\\Desktop\\Models"
opts[#fPattern]="*.3ds"
opts[#fExt]=".fbx"

fn getFilesRecursive root pattern =
(
	dir_array = GetDirectories (root+"/*")
	for d in dir_array do
		join dir_array (GetDirectories (d+"/*"))
	my_files = #()
	for f in dir_array do
		join my_files (getFiles (f + pattern))
	my_files
)

files = getFilesRecursive opts[#fRoot] opts[#fPattern]
files.count

for f in files do (
	resetMaxFile #noPrompt
	fPath = getFilenamePath f
	fName = getFilenameFile f
	fOut = fPath + fName + opts[#fExt]
	importFile f #noPrompt
	exportFile fOut #noPrompt
)