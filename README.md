vim-setup
=========

My vim setup. I use this setup primary for javascript and some Python
development, thus this might not exactly fit your needs. Said that,
feel free to clone and twink it.

Instalation
-----------

```sh
git clone https://github.com/mkretschek/vim-setup
cd vim-setup
git submodule update --init
cp -r .vim* ~/
```

This will fetch all submodules (used via `pathogen`) and
copy the `.vimrc` file and `.vim` folder to the user's home dir.

That's it. Just be aware that the files are copied. If you want to make
changes, you'll either run `cp -r .vim* ~/` after each change or create
symbolic links instead of coping the files.

If you are on Windows, copy `.vim` and `.vimrc` to your home dir
(usually at `C:\Users\username`). Then rename `.vim` to `vimfiles` and
`.vimrc` to `_vimrc`.

Font
----

I've chosen the [Droid Sans Mono](http://www.google.com/fonts#UsePlace:use/Collection:Droid+Sans+Mono)
for my editor. You'll need to download and install it manually or change
the font in the `.vimrc` file by updating the following line:

```vim
set guifont=Droid\ Sans\ Mono:h10
```

You'll need to escape the white spaces if your font's name contains them.
`:h10` sets the font size.

Submodules
----------

The submodules can be listed with `git submodule` and their repos are
listed in `.gitmodules`.

To add a new submodule:

```sh
git submodule add git://github.com/owner/vim-foo.git .vim/bundle/vim-foo
git commit -m "Added vim-foo."
git push origin master
cp -rf .vim* ~/
```

Contribution
------------

If you see anything that could be improved, please, open an issue and I'll
check it as fast as I can. Thank you for your interest.


Author
------

Created by [Mathias Kretschek][mathias] ([mkretschek][])

[mathias]: http://mathias.ms
[mkretschek]: https://github.com/mkretschek
