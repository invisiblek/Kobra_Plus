
#### Hc32f460kct6 Marlin

This project is aimed to provide a way to build Marlin for the Anycubic Kobra Plus. More specifically we use a git submodule so we can hopefully someday track mainline marlin, but still build with Keil which due to the chip on these things is needed to build our firmware.

BEWARE: there are some intricacies with the board in these printers and I'm like, not responsible for you burning down your house because you built someshit you found on the internet and flashed it to a chinese fire hazard you bought off the internet. i truly do not want that to happen but if it does, that's on you.

This repo has a submodule that points to a "normal" marlin source.

In this case, that submodule is just a repo I made using the "best" hash of [Marlin](https://github.com/MarlinFirmware/Marlin) that a script like [hashfinder.sh](hashfinder.sh) handed me. We used to use a script like this to find a close Qualcomm kernel source to what some crappy git history-stripped Samsung source was based off. It is not pretty. It is not supposed to be pretty. It needs a proper rebase. Well, the chip needs official support in PlatformIO/Marlin, but the GD32 chip on these things is apparently some kinda clone of the STM32 and it's a big pain in the beanbag to navigate the differences between it and the actual STM32 in addition to some licensing thing with STM32's usb stack or something.

That being said, Anycubic released their [source](https://github.com/ANYCUBIC-3D/Kobra_Plus) (this repo is forked from it) and [jojos38](https://github.com/jojos38) posted some great instructions on how to build this thing on [reddit](https://www.reddit.com/r/anycubic/comments/y2waxu/tutorial_how_to_build_anycubic_marlin_source_code/) and their [github](https://github.com/jojos38/anycubic-kobra-improved-firmware).

Probably some interesting shit [here](https://drive.google.com/drive/folders/1UJwlFybXNchw_0_HZF9vsLHt-ukm1ZI2?usp=share_link) if some of the downloads above no longer work...
