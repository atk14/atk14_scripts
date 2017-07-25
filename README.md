# Atk14 Scripts
Some useful helpful scripts

## Bash completion scripts
You can choose if you want to install it in a single file or in multiple files configuration.
### Single file configuration
Default file for completion scripts is `.bash_completion` so you can add Atk14's scripts there using this:
```bash
cd /where/you/have/atk14_scripts
cat .bash_completion >> ~/.bash_completion
```
When a new update of the completion script appears you have to find the old version and replace it manually. So i would prefer the following way of installation. 
### Multiple files
I prefer this way in case i expect some updates later
By default bash completion system does not support this so we need to tweak our bash profile a little.
Add this code to `~/.bash_completion`
```bash
for bcfile in ~/.bash_completion.d/* ; do
    . $bcfile
done
```
You can then place several completion scripts into the `.bash_completion.d` directory which will be installed on each login.
Then add Atk14's completion scripts to a file you want to use for Atk14's completion. For example:
```
cp .bash_completion ~/.bash_completion.d/atk14
```
This way you can update this file whenever new version appears

## Vim completion dictionary
We created small script that generates a dictionary that supports completion of Atk14 classes and methods in vim editor.
The dictionary is created using `ctags` command so first make sure that you have installed it.
```bash
cd /atk14_projects/project
. /where/you/have/atk14_scripts/bin/vim_omni_complete_dictionary.sh
```
This script will create dictionary in `~/.vim/tags_atk14`
Then edit your `~/.vimrc` file and add these lines if you don't have it already
```
# Omni completion for Atk14
set tags+=~/.vim/tags_atk14
```
### Usage
You can use for example Supertab plugin (https://github.com/ervandew/supertab) which allows you to use <TAB> key for your code completion needs.