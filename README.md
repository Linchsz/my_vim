# Clone [my_vim](https://github.com/Linchsz/my_vim ) 
```bash
$ cd ~
$ git clone --recursive https://github.com/Linchsz/my_vim.git
$ mkdir .vim
$ mv -f my_vim/* .vim
$ rmdir my_vim
$ cd .vim
$ ln -sf `pwd`/.vimrc ~/.vimrc
```
__________
# Install [homebrew](https://brew.sh)
```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
__________
# Install [vim-plug](https://github.com/junegunn/vim-plug )
```bash
$ brew install vim-plug
```
__________
# Install [powerline fonts](https://github.com/powerline/fonts )  
( To support [vim-airline](https://github.com/vim-airline/vim-airline) plugin )  
```bash
$ git clone https://github.com/powerline/fonts.git
$ ./install.sh
```
__________
# Make sure your vim support python3  
( To support [YouCompleteMe](https://github.com/vim-airline/vim-airline) plugin )  
```bash
$ vim --version
```
If you see `-python3/dyn`  
You must **recompile your vim** to support python3
### Recompile your vim
Click [here](https://codeload.github.com/vim/vim/tar.gz/v8.1.0197 ) to download vim8.1
```bash
# Uninstall your current vim
$ brew uninstall vim

# Unzip
$ tar -xzvf ~/Downloads/vim-8.1.0197.tar.gz

$ cd vim-8.1.0197

# Compiler option configuration: python2/3 perl ruby lua
$ ./configure \
--enable-multibyte \
--enable-perlinterp=dynamic \
--enable-rubyinterp=dynamic \
--with-ruby-command=<your ruby path> \
--enable-pythoninterp=dynamic \
--with-python-config-dir=<your python2 config path> \
--enable-python3interp \
--with-python3-config-dir=<your python3 config path> \
--enable-luainterp \
--with-lua-prefix=<your lua version path>/usr/local/Cellar/lua/5.3.5 \
--enable-cscope \
--enable-gui=auto \
--with-features=huge \
--enable-fontset \
--enable-largefile \
--disable-netbeans \
--enable-fail-if-missing \
--prefix=/usr/local/vim8  

# Compile and install
$ make && make install

# configure: error: could not configure lua
# If you encounter this error, check the lua path
$ which lua
# If lua not found, install lua
$ brew install lua

$ /usr/local/vim8/bin/vim --version
# Make sure you can see +python3/dyn

# Get the old vim path and delete it
$ ll `which vim`
$ rm /usr/local/bin/vim

# Create symbolic link
$ ln -s /usr/local/vim8/bin/vim /usr/local/bin/vim

# Review, confirm your vim support python3
$ vim --version
```
__________
# Compile [YouCompleteMe](https://github.com/vim-airline/vim-airline) plugin  

```bash
$ cd ~/.vim/plugged/YouCompleteMe
$ <Your python3 path> install.py
```
