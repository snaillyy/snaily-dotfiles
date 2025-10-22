#!/usr/bin/env bash

# this script translates from os release to an icon.

# it grabs the ID of /etc/os-release, and puts them in a bash dictionary,
# then iterates through it and finds a match.

# the fonts are from nerd fonts, they're alphabetically sorted.
# if i forgot one of the OSes, please contribute or open an issue.

declare -r os_info=$(grep "^ID" /etc/os-release | cut -d "=" -f 2)
declare -A os_list=( 
    ["almalinux"]=""
    ["alpine"]=""
    ["aosc"]=""
    ["arch"]="󰣇"
    ["archcraft"]=""
    ["arcolinux"]=""
    ["artix"]=""
    ["big"]=""
    ["centos"]=""
    ["coreos"]=""
    ["crystal"]=""
    ["debian"]=""
    ["deepin"]=""
    ["devuan"]=""
    ["elementary"]=""
    ["endeavouros"]=""
    ["fedora"]=""
    ["freebsd"]=""
    ["garuda"]=""
    ["gentoo"]=""
    ["hyperbola"]=""
    ["illumos"]=""
    ["kali"]=""
    ["lfs"]=""
    ["linuxmint"]="󰣭"
    ["locos"]=""
    ["lxle"]=""
    ["mageia"]=""
    ["mandriva"]=""
    ["manjaro"]=""
    ["mxlinux"]=""
    ["nixos"]=""
    ["nobara"]=""
    ["openbsd"]=""
    ["opensuse"]=""
    ["opensuse-leap"]=""
    ["opensuse-tumbleweed"]=""
    ["parabola"]=""
    ["parrot"]=""
    ["pop"]=""
    ["puppy"]=""
    ["raspbian"]=""
    ["rhel"]=""
    ["rocky"]=""
    ["sabayon"]=""
    ["slackware"]=""
    ["solus"]=""
    ["trisquel"]=""
    ["ubuntu"]=""
    ["vanilla"]=""
    ["void"]=""
    ["xerolinux"]=""
    ["zorinos"]=""
)

# the ! searches for the keys instead of their values,
# @ will get everything in the array,
# compare if the key in the array index matches the ID in /etc/os-release
# when found, output and exit, 
for x in ${!os_list[@]}; do
    if [ ${x} == ${os_info} ]; then
        printf ${os_list[$x]}
        exit 0
    fi
done

# display a default if the previous loop didn't find any matches
printf "󱝁"