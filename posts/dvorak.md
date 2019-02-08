#### Programmer Dvorak Keyboard Layout

The Dvorak Simplified Keyboard is a keyboard layout patented during 1936 by August Dvorak and his brother-in-law, William Dealey.

Dvorak proponents claim the layout requires less finger motion and reduces errors compared to the standard QWERTY keyboard arrangement. It is claimed that the reduction in finger distance traveled permits faster typing while also reducing repetitive strain injuries, although that claim is controversial.

Read more on [Roland Kaufmann's page][kaufmann], and on the [Wikipedia][wikipedia].

##### Linux
This simple command will suffice:
`setxkbmap pl dvp -option caps:swapescape`

A more permanent solution is to modify the keyboard `InputClass` section in `xorg.conf`.
```
Section "InputClass"
        Identifier         "Keyboard"
        MatchIsKeyboard    "yes"
        Option "XkbOptions" "caps:swapescape,terminate:ctrl_alt_bksp"
EndSection
```

Setting the layout in the framebuffer differs across distributions.
In the case of Void Linux, just add the line `KEYMAP=dvorak-programmer` to `rc.conf`

##### Windows
[<i class='fa fa-file-download'></i> Download][pkl_down]
a configured minimal portable version of
[Portable Keyboard Layout][pkl_home].
<br>
[<i class='fa fa-file-download'></i> Download][dkr_down]
a program that remaps CapsLock to Escape:
[Dual Key Remap][dkr_home]

To make the changes permanent, copy the program folders to, for example, `Program Files`,
and create a shortcut to `pkl.exe` and/or `dual-key-remap.exe` in
`%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`.

##### macOS
[<i class='fab fa-github'></i> Dowload][polski_dvp]
by going to the project repository.

Follow the installation instructions, then select the layout in system settings, and you're done!

[kaufmann]: https://www.kaufmann.no/roland/dvorak/
[wikipedia]: https://en.wikipedia.org/wiki/Dvorak_Simplified_Keyboard
[pkl_home]: http://pkl.sourceforge.net/
[pkl_down]: https://github.com/maxadamski/maxadamski.github.io/raw/master/res/pkl.zip
[dkr_down]: https://github.com/maxadamski/maxadamski.github.io/raw/master/res/dual-key-remap.zip
[dkr_home]: https://github.com/ililim/dual-key-remap
[polski_dvp]: https://github.com/maxadamski/polski-dvp
