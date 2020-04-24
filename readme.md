vim-gimmename
=============

When you're bad at coming up with names on the spot, gimmename is an
alternative to naming everything temp1, temp2, etc. It might not be good names,
but they'll be unique and you won't get them confused with your other temp
variables.


Requirements
============

From within vim, install our required python package (assuming your pyx default is python3):

```vim
:! python3 -m pip install coolname
" or
:! python3 -m pip install -r ~/.vim/bundle/gimmename/requirements.txt
```


Usage
=====

While typing, if you can't think of a variable name, use these insert mode mappings to gimmename:

* `<C-x><C-z><C-s>` -- snakecase
* `<C-x><C-z><C-d>` -- camelcase
* `<C-x><C-z><C-m>` -- mixedcase
* `<C-x><C-z><C-z>` -- current style defined in b:gimmename_style or g:gimmename_style

Example:

```python
def <C-x><C-z><C-z>(items):
    <C-x><C-z><C-z> = [i for i in items if type(i) == str]
    pass
```

Results in something like:

```python
def skilled_unicorn():
    spicy_pigeon = [i for i in items if type(i) == str]
    pass
```


Inspiration
===========

vim-gimmename was inspired by [this post about
codelf](https://www.reddit.com/r/vim/comments/g74lbf/a_vim_plugin_for_searching_useful_variable_names/).
I was a bit horrified at the idea of blasting the user with tons of variable
names that contain their token, but even more uncomfortable with all the
variables being `temp(n+1)`. I'd recently messed around with the coolname
python package, so vim-gimmename was an obvious reaction.


License
=======

MIT License
