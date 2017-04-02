![Logo][logo]

Light and dark vim colorscheme, shamelessly stolen from atom (another
excellent text editor). **One** supports *true colors* and falls back
gracefully and automatically if your environment does not support this
feature.

![Vim One Screenshot][screenshot_global]

## Vim Airline theme

Add the following line to your `~/.vimrc` or `~/.config/nvim/init.vim`

```vim
let g:airline_theme='one'
```

As for the colorscheme, this theme comes with light and dark flavors.


![Vim Airline Normal Dark][screenshot_normal_dark]
![Vim Airline Insert Dark][screenshot_insert_dark]
![Vim Airline Visual Dark][screenshot_visual_dark]
![Vim Airline Replace Dark][screenshot_replace_dark]

![Vim Airline Normal Light][screenshot_normal_light]
![Vim Airline Insert Light][screenshot_insert_light]
![Vim Airline Visual Light][screenshot_visual_light]
![Vim Airline Replace Light][screenshot_replace_light]

## List of enhanced language support

Pull requests are more than welcome here.
I have created few issues to provide a bare bone roadmap for this color
scheme.

### Stable

* Asciidoc
* Cucumber features
* CSS and Sass
* Elixir
* HTML
* JavaScript, JSON
* Markdown
* Ruby
* Vim
* XML
* Go

### In progress

* Jade


## Installation

You can use your preferred Vim Package Manager to install **One**.

## Usage

**One** comes in two flavors: light and dark, make sure to properly set your `background` before setting the colorscheme.

```vim
set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
```

### Italic support

Some terminals do not support italic, cf. [#3][issue_3].

If your terminal does support _italic_, you can set the `g:one_allow_italics` variable to 1 in your `.vimrc` or `.config/nvim/init.vim`:

```vim
set background=light        " for the light version
let g:one_allow_italics = 1 " I love italic for comments
colorscheme one
```

iTerm2 can support italic, follow the instructions given in this [blog post by Alex Pearce](https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/).
Make sure to read the update if you are using tmux version 2.1 or above.

### True color support
To benefit from the **true color** support make sure to add the following lines in your `.vimrc` or `.config/nvim/init.vim`

```vim
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
```


I've tested the following setup on a Mac:

* iTerm2 nightly build
* Neovim 0.1.4 and 0.1.5-dev
* Vim 7.4.1952

[logo]: screenshots/logo.png
[screenshot_global]: screenshots/one.png
[screenshot_normal_dark]: screenshots/normal-dark.png
[screenshot_insert_dark]: screenshots/insert-dark.png
[screenshot_visual_dark]: screenshots/visual-dark.png
[screenshot_replace_dark]: screenshots/replace-dark.png
[screenshot_normal_light]: screenshots/normal-light.png
[screenshot_insert_light]: screenshots/insert-light.png
[screenshot_visual_light]: screenshots/visual-light.png
[screenshot_replace_light]: screenshots/replace-light.png

[issue_3]: https://github.com/rakr/vim-one/issues/3


## Origins:

This project is a fork of another vim-one plugin.

It includes an additional fork of a colorscheme for lightline
originally gotten here: 
https://github.com/itchyny/lightline.vim/blob/master/autoload/lightline/colorscheme/one.vim


