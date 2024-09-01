Visual Studio Code supports variable substitution in Debugging and Task
configuration files as well as some select settings. Variable substitution is
supported inside key and value strings in =launch.json= and =tasks.json= files
using `${variableName}` syntax.

## Predefined variables

The following predefined variables are supported:

| {workspaceFolder}         | the path of the folder opened in VS Code                         |
| ------------------------- | ---------------------------------------------------------------- |
| {workspaceFolderBasename} | name of the folder opened in VS Code without any slashes (/)     |
| {file}                    | currently opened file                                            |
| {relativeFile}            | currently opened file relative to workspaceFolder                |
| {relativeFileDirname}     | currently opened file's dirname relative to workspaceFolder      |
| {fileBasename}            | currently opened file's basename                                 |
| {fileBasenameNoExtension} | currently opened file's basename with no file extension          |
| {fileDirname}             | currently opened file's dirname                                  |
| {fileExtname}             | currently opened file's extension                                |
| {cwd}                     | task runner's current working directory on startup               |
| {lineNumber}              | current selected line number in the active file                  |
| {selectedText}            | current selected text in the active file                         |
| {execPath}                | path to the running VS Code executable                           |
| {defaultBuildTask}        | name of the default build task                                   |
| ------------------------- | ---------------------------------------------------------------- |

- Predefined variables examples

### Example

- A file located at `/home/elliot/fsociety/ecorp/encrypt.sh` opened in your
  editor;
- The directory `/home/elliot/fsociety` opened as your root workspace.

So you will have the following values for each variable:

| {env-name}                | what-it-does                                     |
| ------------------------- | ------------------------------------------------ |
| {workspaceFolder}         | `/home/elliot/fsociety`                          |
| {workspaceFolderBasename} | `fsociety`                                       |
| {file}                    | `/home/elliot/fsociety/ecorp/encrypt.sh`         |
| {relativeFile}            | `ecorp/encrypt.sh`                               |
| {relativeFileDirname}     | `ecorp`                                          |
| {fileBasename}            | `encrypt.sh`                                     |
| {fileBasenameNoExtension} | `encrypt`                                        |
| {fileDirname}             | `/home/elliot/fsociety/ecorp`                    |
| {fileExtname}             | `.sh`                                            |
| {lineNumber}              | line number of the cursor                        |
| {selectedText}            | text selected in your code editor                |
| {execPath}                | location of Code.exe                             |
| ------------------------- | ------------------------------------------------ |
