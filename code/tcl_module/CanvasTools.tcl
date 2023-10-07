##############################################################
# CanvasTools.tcl
# 
# Contains all of the utilities for tk::canvas
# Created by Jeff Purdy
##############################################################
proc createCanvas { w width height bgColor } {
    canvas ${w}.canvas -width $width -height $height -background $bgColor -borderwidth 5 -relief ridge
    return ${w}.canvas
}

proc drawX { w x y xSize } {
    set xRight [expr $x + $xSize]
    set yRight [expr $y + $xSize]
    $w create line $x $y $xRight $yRight -width 2
    $w create line $xRight $y $x $yRight -width 2
}

proc drawAll {} {
 
}
