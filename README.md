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


Submodules
----------

The submodules can be listed with `git submodule` and their repos are
listed in `.gitmodules`.


Contribution
------------

If you see anything that could be improved, please, open an issue and I'll
check it as fast as I can. Thank you for your interest.


Author
------

Created by [Mathias Kretschek][mathias] ([mkretschek][])

[mathias]: http://mathias.ms
[mkretschek]: https://github.com/mkretschek
