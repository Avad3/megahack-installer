#!/bin/bash

export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam"
STEAM_APPS_PATH="$STEAM_COMPAT_CLIENT_INSTALL_PATH/steamapps"
GD_PATH="$STEAM_APPS_PATH/common/Geometry Dash"
export STEAM_COMPAT_DATA_PATH="$STEAM_APPS_PATH/compatdata/322170"
PROTON_PATH="$STEAM_APPS_PATH/common/Proton - Experimental"
PROTON_EXE="$PROTON_PATH/proton"

while getopts "p:" arg; do
    case $arg in
        p)
            MH_EXE_PATH="$OPTARG"
            echo $OPTARG
            ;;
    esac
done

"$PROTON_EXE" runinprefix "$MH_EXE_PATH"

mv "$GD_PATH/hackpro.dll" "$GD_PATH/absoluteldr.dll"