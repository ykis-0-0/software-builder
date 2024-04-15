> Reading READMEs is exhausting for every other repos which has it written. *"For mine?"* you may ask. It's the mere existence of me and everything I've done that's disgusting.

&mdash; [@ykis-0-0](https://www.github.com/ykis-0-0)

Read Me? just don't pls. you'll get everything you need [here](https://github.com/ykis-0-0/software-builder/actions).

What? you have too much time to waste? 😮‍💨 ok here you go

# What's this
* A repo which ~~is~~ ~~has~~ had been dedicated to exploit(?) GitHub Actions to build software without messing up my computer
* Local build now also possible using Docker *(Terms and conditions apply. Not all items provided are eligible.)*

# Why you made this
* It makes me not need to mess up my computer\
  *i mean i ain't gonna `apt-get install` shites which only get used once per OS reinstall*
* If that's not persuasive enough... Well it's free i guess? *(only applicable to GitHub Actions build, Data and Electricity rates may apply for Docker builds)*

Raise an [issue](https://www.github.com/ykis-0-0) if you need me to add more 💁‍♂️

We now have:
| Repository   | Architecture |
| ----------   | ------------ |
| [xPMo/dtach](https://www.github.com/xPMo/dtach)   | aarch64 |
| [paul-j-lucas/cdecl](https://www.github.com/paul-j-lucas/cdecl) | aarch64 |
| [microsoft/cascadia-code](https://www.github.com/microsoft/cascadia-code) | Universal(?) ~~hey it's a TTF does arch really matter for that?~~ |
| [Manjaro ARM Minimal Image for Raspberry Pi 4B](https://github.com/manjaro-arm/rpi4-images/releases/download/22.06/Manjaro-ARM-minimal-rpi4-22.06.img.xz.torrent) (for use in [PINN](https://github.com/procount/pinn)) | aarch64 |
| [ful1e5/Bibata_Cursor](https://www.github.com/ful1e5/Bibata_Cursor) | Windows, XCursor & PNG ~~(I ain't gonna pay, but the cursor theme is good tho)~~ |

# When debugging new workflows
```console
$ act -W ./.github/workflows/[SOME NEW BUILD FLOW].yml
--- snip ---
❗  ::error::Input required and not supplied: token
❌  Failure - Main Checkout bibata Repo
exitcode '1': failure
--- snip ---
🏁  Job failed
```

Oh no what to do? This:
```console
$ act -s GITHUB_TOKEN -W ./.github/workflows/[SOME NEW BUILD FLOW].yml
```
