---
title: Installing Emacs for OS X
layout: default
---

<pre>

brew install emacs --cocoa --HEAD --use-git-head
#ln -s /usr/local/Cellar/emacs/HEAD/Emacs.app /Applications #doesn't play nice with spotlight
mv /usr/local/Cellar/emacs/HEAD/Emacs.app /Applications

#if you want to use emacsclient
sudo mv /usr/bin/emacsclient /usr/bin/emacsclient.old # backup the original emacsclient.
sudo ln /Applications/Emacs.app/Contents/MacOS/bin/emacsclient /usr/bin/emacsclient # symlink emacsclient from Emacs.app

install
https://github.com/technomancy/emacs-starter-kit

Get PeepOpen
http://peepcode.com/products/peepopen
From preferences, install plugin for Emacs.
It creates ~/.emacs.d/vendor/peepopen.el
Check peepopen.el for installation instructions.
It requires textmate.el

there is some issue with keybindings in the peepopen, add this to the
end of the init.el
(textmate-mode)

Install haml-mode from this repository(official doesn't support 24 atm.)
cd ~/.emacs.d/vendor
git clone https://github.com/thorstadt/haml-mode.git

</pre>
