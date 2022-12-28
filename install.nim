import std/os

const home = getenv "HOME"
const path = getenv "PATH"
const cwd  = getenv "PWD"

const requiredDirs = [
  home & "/bin",
  home & "/src",
  home & "/notes",
]

const requiredBins = [
  "git",
  "bat",
  "python3",
  "fish",
  # "nvim",
]

echo "Checking Directory Structure"
for dir in requiredDirs:
  if existsOrCreateDir dir:
    echo "   Found " & dir & " doing nothing..."
  else:
    echo "Creating " & dir

echo "Checking for required binaries"
for bin in requiredBins:
  var location = findExe(bin)
  if location != "":
    echo "   Found " & bin & " at " & location
  else:
    echo " Missing " & bin & "!"

echo "Linking binaries and config files"
# createSymlink(cwd & "/config/config.fish", home & "/.config/fish_test.fish")
removeFile(home & "/.config/test-dir")
# createSymlink(cwd & "/bash_functions", home & "/.config/test-dir")
