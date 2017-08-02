#!/usr/bin/env bash

# Map an unused modifier's keysym to the spacebar's keycode and make it a
# control modifier. It needs to be an existing key so that emacs won't
# spazz out when you press it. Hyper_L is a good candidate.
# spare_modifier="Control_L"
# clear lock
# xmodmap -e "keycode 66 = $spare_modifier"
# xmodmap -e "add Control = $spare_modifier"

# Map space to an unused keycode (to keep it around for xcape to
# use).
# xmodmap -e "keycode 255 = space"

# Finally use xcape to cause the space bar to generate a space when tapped.
xcape -e "Control_R=Escape"
xcape -e "Control_L=Escape"
xcape -e "Alt_L=Control_L|f"
