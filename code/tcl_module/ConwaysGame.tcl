#!/usr/bin/tclsh 

##############################################################
# ConwaysGames.tcl
#
# Main program for tcl based Conways Game
# Created by Jeff Purdy
##############################################################

package require Tk
source  "CreateDialog.tcl"

set title "Conway's Game of Life"
set canvasSize 800
set bgColor white

set window [createDialog $title $canvasSize $bgColor]
