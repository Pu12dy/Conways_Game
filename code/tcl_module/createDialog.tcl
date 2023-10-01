#!/usr/bin/tclsh
package require Tk

set dialogSize 650
set buttonBuffer [expr $dialogSize / 2]
wm title . "Conway's Game of Life"

# Create a convas for the grid
frame .dialogFrame
canvas .dialogFrame.canvas -width 650 -height 650 -background white -borderwidth 5 -relief ridge

# Create buttons for controlling the simulation
frame .dialogFrame.buttonFrame
button .dialogFrame.buttonFrame.startButton  -text "Start" -command {start_simulation} 
button .dialogFrame.buttonFrame.stopButton   -text "Stop"  -command {stop_simulation}
button .dialogFrame.buttonFrame.clearButton  -text "Clear" -command {clear_grid}
button .dialogFrame.buttonFrame.exitButton   -text "Exit"  -command {exit_game}

# Using grid geometry manager to handle layout
grid .dialogFrame -column 0 -row 0
grid .dialogFrame.canvas -row 0 -columnspan 3 -sticky news 
grid .dialogFrame.buttonFrame -row 1 -column 0 -sticky nsew -padx $buttonBuffer -pady 2

grid .dialogFrame.buttonFrame.startButton -row 1 -column 1 -sticky we
grid .dialogFrame.buttonFrame.stopButton  -row 1 -column 2 -sticky we
grid .dialogFrame.buttonFrame.clearButton -row 1 -column 3 -sticky we
grid .dialogFrame.buttonFrame.exitButton  -row 2 -column 2 -sticky s 

grid rowconfigure .dialogFrame 0 -weight 1
grid rowconfigure .dialogFrame 1 -weight 1
grid columnconfigure .dialogFrame.buttonFrame 0 


# Function starting the simulatin
proc start_simulation {} {

}

proc stop_simulation {} {
}

proc clear_grid {} {

}

proc exit_game {} {
	exit
}
