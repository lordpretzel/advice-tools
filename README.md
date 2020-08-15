[![License: GPL 3](https://img.shields.io/badge/license-GPL_3-green.svg)](http://www.gnu.org/licenses/gpl-3.0.txt)
<!-- [![GitHub release](https://img.shields.io/github/release/lordpretzel/advice-tools.svg?maxAge=86400)](https://github.com/lordpretzel/advice-tools/releases) -->
<!-- [![MELPA Stable](http://stable.melpa.org/packages/advice-tools-badge.svg)](http://stable.melpa.org/#/advice-tools) -->
<!-- [![MELPA](http://melpa.org/packages/advice-tools-badge.svg)](http://melpa.org/#/advice-tools) -->
[![Build Status](https://secure.travis-ci.org/lordpretzel/advice-tools.png)](http://travis-ci.org/lordpretzel/advice-tools)


# advice-tools

Small library for adding and removing advice to functions.

## Installation

<!-- ### MELPA -->

<!-- `advice-tools` is available from MELPA (both -->
<!-- [stable](http://stable.melpa.org/#/advice-tools) and -->
<!-- [unstable](http://melpa.org/#/advice-tools)).  Assuming your -->
<!-- `package-archives` lists MELPA, just type -->

<!-- ~~~sh -->
<!-- M-x package-install RET advice-tools RET -->
<!-- ~~~ -->

<!-- to install it. -->

### Quelpa

Using [use-package](https://github.com/jwiegley/use-package) with [quelpa](https://github.com/quelpa/quelpa).

~~~elisp
(use-package
  :quelpa ((advice-tools
            :fetcher github
            :repo "lordpretzel/advice-tools")
           :upgrade t)
  )
~~~

### straight

Using [use-package](https://github.com/jwiegley/use-package) with [straight.el](https://github.com/raxod502/straight.el)

~~~elisp
(use-package advice-tools
  :straight (advice-tools :type git :host github :repo "lordpretzel/advice-tools"))
~~~

### Source

Alternatively, install from source. First, clone the source code:

~~~sh
cd MY-PATH
git clone https://github.com/lordpretzel/advice-tools.git
~~~

Now, from Emacs execute:

~~~
    M-x package-install-file RET MY-PATH/advice-tools
~~~

Alternatively to the second step, add this to your `.emacs` file:

~~~elisp
(add-to-list 'load-path "MY-PATH/advice-tools")
(require 'advice-tools)
~~~

## Usage

Adds the following functions:

- `advice-tools/advice-add-if-def` - Add advice `THEADVICE` as type `T` to function `f` if the function to be advised and the advising function both exists.
- `advice-tools/advice-unadvice` - Remove all advices from symbol `SYM`.
- `advice-tools/advice-remove-if-def` - Add advice if the function to be advised and the advising function both exists.
