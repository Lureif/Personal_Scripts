#!/bin/sh

MinePath=~/Games/minecraft/minecraft-launcher/minecraft-launcher
GoosePath=~/Games/Untitled.Goose.Game/Untitled.Goose.Game/
IsaacPath=~/Games/The.Binding.of.Isaac.Afterbirth.Plus.Update.22/isaac-ng.exe
PSXEmuPath=~/Games/Emulation/PSX/PSX_EMU/epsxe.exe

if [ -f $1 ];
then
    case $1 in
	"Goose")
	    echo "Running Untitle goose game"
	    wine $GoosePath/UnityCrashHandler64.exe & wine $GoosePath/Untitled.exe
	    ;;
	"Minecraft")
	    echo "Running Minecraft"
	    exec $MinePath &
	    ;;
	"Isaac")
	    echo "Running The Binding of Isaac"
	    wine $IsaacPath &
	    ;;
	"Dwarf")
	    echo "Running Dwarf Fortress"
	    dwarffortress
	    ;;
	"PSX")
	    echo "Running ePSXe"
	    wine PSXEmuPath &
	    ;;
	*)
	    echo " '$1' : No such title."
	    echo "Availlable titles: Goose / Minecraft / Isaac / Dwarf"
	    ;;
    esac
else
    echo "usage: ./play <title>"
    echo "Availlable titles: Goose / Minecraft / Isaac / Dwarf"
fi

#	"FFVII")
#		if [[ "$2" != "$NULL" ]] ;
#		then
#			~/scripts/map-controller.sh shit-troller &
#			wine something-epsxe something-iso &
#		else
#			echo "No controller specified."
#		fi
