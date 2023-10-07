source "CanvasTools.tcl"

variable gameCanvas

proc createDialog { title canvasSize bgColor} {
    
    set buttonBuffer [expr $canvasSize / 2]
    set xSize 10
    wm title . $title
    frame .dialogFrame
    set can [createCanvas .dialogFrame $canvasSize $canvasSize $bgColor]
    # Creating local varaibles for dialog
    set gameCanvas .dialogFrame.canvas
    # Create buttons for controlling the simulation
    frame  .dialogFrame.buttonFrame
    button .dialogFrame.buttonFrame.startButton  -text "Start" -command {start_simulation gameCanvas xSize}
    button .dialogFrame.buttonFrame.stopButton   -text "Stop"  -command {stop_simulation gameCanvas}
    button .dialogFrame.buttonFrame.clearButton  -text "Clear" -command {clear_grid gameCanvas}
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
}

# Function starting the simulatin
proc start_simulation {w xSize} {
    drawX $w 100 100 $xSize
}

proc stop_simulation {w} {

}
 
proc clear_grid {w} {
    $w delete all
}
 
proc exit_game {} {
    exit
}
  
proc printX {} {
  
}

