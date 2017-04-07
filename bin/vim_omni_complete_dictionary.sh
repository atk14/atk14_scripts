#!/bin/bash

#
# vytvori index pro doplnovani kodu ve vim
# inspired by http://mwop.net/blog/134-exuberant-ctags-with-PHP-in-Vim.html
# jeste zajistit spusteni v atk14/src
#
ctags -f ~/.vim/tags_atk14 -h ".php.inc" -R \
--exclude="\.git" \
--exclude="\.svn" \
--totals=yes --tag-relative=yes --PHP-kinds=+ivcf \
--regex-PHP='/(abstract)?\s+class\s+([^ ]+)/\2/c/' \
--regex-PHP='/(static|abstract|public|protected|private)\s+(final\s+)?function\s+(\&\s+)?([^ (]+)/\4/f/' \
--regex-PHP='/interface\s+([^ ]+)/\1/i/' \
--regex-PHP='/\$([a-zA-Z_][a-zA-Z0-9_]*)/\1/v/' \
--language-force=PHP

