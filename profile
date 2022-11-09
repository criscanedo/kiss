# /etc/profile
# System wide environment and startup programs.

# Set default path (/usr/sbin:/sbin:/bin included for non-KISS Linux chroots).
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin
export LC_ALL="en_US.UTF-8"
export LANG="$LC_ALL"
export VISUAL="vi"
export EDITOR="$VISUAL"
export CFLAGS="-O2"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j$(nproc)"

# Set default umask.
umask 022

# Define foreground color variables
P_BLACK="\[$(tput setaf 0)\]"
P_RED="\[$(tput setaf 1)\]"
P_GREEN="\[$(tput setaf 2)\]"
P_YELLOW="\[$(tput setaf 3)\]"
P_BLUE="\[$(tput setaf 4)\]"
P_MAGNETA="\[$(tput setaf 5)\]"
P_CYAN="\[$(tput setaf 6)\]"
P_WHITE="\[$(tput setaf 7)\]"
P_RESET="\[$(tput sgr0)\]"

# Configure prompt
export PS1="$P_GREEN\u$P_RED@$P_GREEN\h:$P_CYAN\w$P_WHITE\\$ $P_RESET"

# Load profiles from /etc/profile.d
for file in /etc/profile.d/*.sh; do
    [ -r "$file" ] && . "$file"
done

unset file
