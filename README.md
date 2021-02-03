# myvim

My vim configuration setup mainly for Python development.

It used the Vundle package manager, which only requires this line to install:

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```


First install flake8 for Python PEP8 compliance:

```
python -m pip install flake8
```

Then to install all the packages you can run:

```
:PluginInstall
```

The packages user are:  

1. `syntastic` for syntax checks.
2. `vim-flake8` for PEP8
3. `nerdtree` for file browsing. 
4. `vim-python-pep8-indent` to aid indentation.
5. `vim-solarized8` solarized theme.

There are mappings for navigating between splits:

```
- Cntrl + J go down
- Cntrl + K go up
- Cntrl + L go right
- Cntrl + H go left
```
