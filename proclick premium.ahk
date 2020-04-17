/*
+========================================================================================================+
+========================================================================================================+
+========================================================================================================+

 ____  ____   ___     __  _      ____   __  __  _      ____  ____     ___  ___ ___  ____  __ __  ___ ___
|    \|    \ /   \   /  ]| |    |    | /  ]|  |/ ]    |    \|    \   /  _]|   |   ||    ||  |  ||   |   |
|  o  )  D  )     | /  / | |     |  | /  / |  ' /     |  o  )  D  ) /  [_ | _   _ | |  | |  |  || _   _ |
|   _/|    /|  O  |/  /  | |___  |  |/  /  |    \     |   _/|    / |    _]|  \_/  | |  | |  |  ||  \_/  |
|  |  |    \|     /   \_ |     | |  /   \_ |     \    |  |  |    \ |   [_ |   |   | |  | |  :  ||   |   |
|  |  |  .  \     \     ||     | |  \     ||  .  |    |  |  |  .  \|     ||   |   | |  | |     ||   |   |
|__|  |__|\_|\___/ \____||_____||____\____||__|\_|    |__|  |__|\_||_____||___|___||____| \__,_||___|___|

                                        +=~ BY SNIPER9143 ~=+

+========================================================================================================+
+========================================================================================================+
+========================================================================================================+

             !+ ProClick Premium, The quieter you become, the more you can hear +1


           ***The most Undetectable, and powerful AutoHotkey Script to exist on the internet***

+========================================================================================================+
Below is a tutorial and how you can change various options on the script
+========================================================================================================+

                                            +=~ PRESETS ~=+

1 - JUMPER (Fast start-up, medium-end, hard to detect)
2 - CLASSIC (Constant clicking no changes in cps and movement, easily detected)
3 - TURTLE (Slow startup and slow ending, hard to detect, clicking spread out, random cps high)
4 - SNIPER (Fast start-up, slow ending, precise clicking with little movement)
5 - SPRAY (Fast startup, fast ending, clicking is very spread out, with a lot of movement)
6 - NEEDLE (Slow startup, slow ending, clicking is very precise)
7 + CUSTOM (You can create custom presets by adding your variables)

+========================================================================================================+

*/

PRESET := 2 ; pick "PRESET := 1" through "PRESET := 6"   to change your preset (remember to only change the number)

/*

+========================================================================================================+

                                            +=~ TOGGLE ~=+

==++++++This variable changes the way you can activate and deactivate the autoclicking.++++++==

++++++"TOGGLE" is set to "true"++++++
-One-click of your hotkey will start the auto-clicking and one-click will end the auto-clicking. This is good for games where
-you have to get up and leave.

++++++"TOGGLE" is set to "false"++++++
-Holding down your hotkey will start your auto-clicking, but on release, it will rest. This is good for FPS games or most PVP

+========================================================================================================+

*/

TOGGLE := false ;change to "TOGGLE := false" or "TOGGLE := true"

/*

+========================================================================================================+

                                            +=~ CPS ~=+

==++++++This variable changes the maxiumum CPS you will experiance after activiating++++++==

++++++How to pcik++++++
-Before selecting your cps please research your game's/server's maximum permitted cps to avoid a ban
-also, take note if your cps is set too high, some computers may not be able to handle too high cps and bottle
-neck

+========================================================================================================+

*/

CPS := 25

/*

+========================================================================================================+

                                            +=~ CLICK ~=+

==++++++This variable changes the hotkey that is used to start
clicking++++++==
++++++How to pcik++++++
-Remeber to pick a valid hotkey name out of the hotkey chart located on the bottom


+========================================================================================================+

*/

CLICK = XButton2

/*

+========================================================================================================+

                                            +=~ START ~=+

==++++++This variable changes how you start the script++++++==

++++++How to pcik++++++
-Remember to pick a valid hotkey name out of the hotkey chart located on the bottom


+========================================================================================================+

*/

START = y

/*

+========================================================================================================+

                                            +=~ STOP ~=+

==++++++This variable changes how you stop/close the script++++++==

++++++How to pick++++++
-Remember to pick a valid hotkey name out of the hotkey chart located on the bottom


+========================================================================================================+

*/

STOP = j

/*

+========================================================================================================+

                                            +=~ CUSTOM PRESETS ~=+

==++++++This option is for advanced users who need full control in order to maximize performance++++++==

++++++How to setup++++++
-If we look at the code below you may notice it is numbers contained in brackets.
-we have to change the numbers inside the brackets in a specific order
- PRESETS[1] := [[CPS, 0.9, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[10, 2]],


-. for example, we can change 0.9 to 1 and you would have to paste in

**number is 0.9
-                      v
- PRESETS[1] := [[CPS, 0.9, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[10, 2]]
**number is 1
-.           		   v
- PRESETS[1] := [[CPS, 1, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[10, 2]]

- we also have to change this number that cooresponds to the preset number
- ex if we wanted to make preset 8 this number would change to 8

**number is 1
		 v
-PRESETS[1] := [[CPS, 1, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[10, 2]]

**we change the number to 8
		 v
-PRESETS[8] := [[CPS, 1, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[10, 2]]

-now lets go over which each number means in order
-If you would like a visual represitation i created please visit - https://www.desmos.com/calculator/tufiu5npsi
-here are the variables that are used (in order)

-++++++m, c, a, s, d, r, oy, ox, mr, sd++++++

+++===============================CPS FUNCTION=================================++

This set of variables change the nature the cps increases and decreases

+++============================================================================++

-m == Max CPS reached within script.
      CPS is clicks per second. for example, if you had 2 CPS the
      script would click every 1000/2 milliseconds or 500 milliseconds

-c == Attack path affects the method at which the CPS increases.
      This follows a square root function so you can change the rate at which the CPS increases within the Attack magnitude. for
      example if you wanted the script to start clicking slow but
      then suddenly start clicking faster you would make c higher

-a == Attack magnitude affects the rate at which CPS increases.
      A low a value simulates someone who would reach max cps very
      quick

-s == Sustain affects how long the max cps remains constant.

-d == Decay affects the "fatigue rate" or how fast the output decreases.
      the script uses an exponential decay function so d is the percent
      lost each millisecond

-r == Random variation. Affects the margin at which variables can be random
       for example, if r=3 and the cps is 20 a random variable between 17 and
      23 will be selected.

-oy == Offset y, this changes how much the entire script is raised on the y-axis
       This is used if you don't want to start at 0 cps, when t = 0, keep in mind
       you will have to add oy to Max CPS (m)

-ox == Offset x, this changes how much the entire script is offset on the x-axis or (t)
       This is used if you want CPS to remain at 0 for a longer period.

+++========================Radial Distrabution Function========================++

These variables change the nature of how the clicks are radially distributed

+++============================================================================++
-mr == Max Radius, this is the maximum distance in pixles your mouse can land


-sd == Standard Deviation, how much the click coordinates are spread out from the origin to the
       Max Radius (mr)

+========================================================================================================+

*/
PRESETS := Object()

PRESETS[1] := [[CPS, 0.7, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[10, 2]]
PRESETS[2] := [[CPS, 0, 200.0, 1000.0, 0, 0.0, 0.0, 0.0],[10, 2]]
PRESETS[3] := [[CPS, 3, 1000, 3000.0, 0.0000091, 5.0, 0.0, 0.0],[10, 4]]
PRESETS[4] := [[CPS, 0.9, 100.0, 2000.0, 0.0000091, 0.1, 0.0, 0.0],[3, 1]]
PRESETS[5] := [[CPS, 0.6, 70.0, 115.0, 0.0004, 0.245, 0.0, 0.0],[50, 10]]
PRESETS[6] := [[CPS, 3, 1000, 3000.0, 0.0000091, 5.0, 0.0, 0.0],[3, 1]]


/*
+========================================================================================================+
+========================================================================================================+
+========================================================================================================+
                                        +=~ LIST OF KEY NAMES ~=+
+========================================================================================================+
+========================================================================================================+
+========================================================================================================+


+========================================================================================================+
When Selecting a hotkey please use the key names that appear first. for example "LButton 	Left mouse button"
LButton would be used as a hotkey name for the Left mouse button
+========================================================================================================+

+========================================================================================================+
										+++++++++MOUSE+++++++++
+========================================================================================================+
+========================================================================================================+
General Buttons
+========================================================================================================+
LButton 	Left mouse button
RButton 	Right mouse button
MButton 	Middle or wheel mouse button
+========================================================================================================+
Advanced Buttons
+========================================================================================================+
XButton1 	4th mouse button. Typically performs the same function as Browser_Back.
XButton2 	5th mouse button. Typically performs the same function as Browser_Forward.
+========================================================================================================+
Wheel
+========================================================================================================+
WheelDown 	Turn the wheel downward (toward you).
WheelUp 	Turn the wheel upward (away from you).
WheelLeft
WheelRight

[v1.0.48+]: Scroll to the left or right.

Requires Windows Vista or later. These can be used as hotkeys with some (but not all) mice which have a second wheel or support tilting the wheel to either side. In some cases, software bundled with the mouse must instead be used to control this feature. Regardless of the particular mouse, Send and Click can be used to scroll horizontally in programs which support it.
+========================================================================================================+
									+++++++++Keyboard+++++++++
+========================================================================================================+
Note: The names of the letter and number keys are the same as that single letter or digit. For example: b is the B key and 5 is the 5 key.

Although any single character can be used as a key name, its meaning (scan code or virtual keycode) depends on the current keyboard layout. Additionally, some special characters may need to be escaped or enclosed in braces, depending on the context. [v1.1.27+]: The letters a-z or A-Z can be used to refer to the corresponding virtual keycodes (usually vk41-vk5A) even if they are not included in the current keyboard layout.
+========================================================================================================+
General Keys
+========================================================================================================+
CapsLock 	CapsLock (caps lock key)
Space 	Space (space bar)
Tab 	Tab (tabulator key)
Enter 	Enter
Return 	Deprecated: Use the synonym Enter instead to reduce ambiguity.
Escape (or Esc) 	Esc
Backspace (or BS) 	Backspace
+========================================================================================================+
Cursor Control Keys
+========================================================================================================+
ScrollLock 	ScrollLock (scroll lock key). While the Ctrl key is held down, the ScrollLock key produces the key code of CtrlBreak, but can be differentiated from Pause by scan code.
Delete (or Del) 	Delete
Insert (or Ins) 	Insert
Home 	Home
End 	End
PgUp 	PageUp (page up key)
PgDn 	PageDown (page down key)
Up 	? (up arrow key)
Down 	? (down arrow key)
Left 	? (left arrow key)
Right 	? (right arrow key)
+========================================================================================================+
Numpad Keys
+========================================================================================================+
Due to system behavior, the following keys seperated by a slash are identified differently depending on whether NumLock is ON or OFF. If NumLock is OFF but Shift is pressed, the system temporarily releases Shift and acts as though NumLock is ON.
Numpad0 / NumpadIns	0 / Insert
Numpad1 / NumpadEnd	1 / End
Numpad2 / NumpadDown	2 / ?
Numpad3 / NumpadPgDn	3 / PageDown
Numpad4 / NumpadLeft	4 / ?
Numpad5 / NumpadClear	5 / typically does nothing
Numpad6 / NumpadRight	6 / ?
Numpad7 / NumpadHome	7 / Home
Numpad8 / NumpadUp	8 / ?
Numpad9 / NumpadPgUp	9 / PageUp
NumpadDot / NumpadDel	. / Delete
NumLock 	NumLock (number lock key). While the Ctrl key is held down, the NumLock key produces the key code of Pause, so use ^Pause in hotkeys instead of ^NumLock.
NumpadDiv 	/ (division)
NumpadMult 	* (multiplication)
NumpadAdd 	+ (addition)
NumpadSub 	- (subtraction)
NumpadEnter 	Enter
+========================================================================================================+
Function Keys
+========================================================================================================+
F1 - F24 	The 12 or more function keys at the top of most keyboards.
+========================================================================================================+
Modifier Keys
+========================================================================================================+
LWin 	Left Win. Corresponds to the <# hotkey prefix.
RWin

Right Win. Corresponds to the ># hotkey prefix.

Note: Unlike Control/Alt/Shift, there is no generic/neutral "Win" key because the OS does not support it. However, hotkeys with the # modifier can be triggered by either Win key.
Control (or Ctrl) 	Control. As a hotkey (Control::) it fires upon release unless it has the tilde prefix. Corresponds to the ^ hotkey prefix.
Alt 	Alt. As a hotkey (Alt::) it fires upon release unless it has the tilde prefix. Corresponds to the ! hotkey prefix.
Shift 	Shift. As a hotkey (Shift::) it fires upon release unless it has the tilde prefix. Corresponds to the + hotkey prefix.
LControl (or LCtrl) 	Left Control. Corresponds to the <^ hotkey prefix.
RControl (or RCtrl) 	Right Control. Corresponds to the >^ hotkey prefix.
LShift 	Left Shift. Corresponds to the <+ hotkey prefix.
RShift 	Right Shift. Corresponds to the >+ hotkey prefix.
LAlt 	Left Alt. Corresponds to the <! hotkey prefix.
RAlt

Right Alt. Corresponds to the >! hotkey prefix.

Note: If your keyboard layout has AltGr instead of RAlt, you can probably use it as a hotkey prefix via <^>! as described here. In addition, LControl & RAlt:: would make AltGr itself into a hotkey.

+========================================================================================================+
Multimedia Keys
+========================================================================================================+

The function assigned to each of the keys listed below can be overridden by modifying the Windows registry. This table shows the default function of each key on most versions of Windows.
Browser_Back 	Back
Browser_Forward 	Forward
Browser_Refresh 	Refresh
Browser_Stop 	Stop
Browser_Search 	Search
Browser_Favorites 	Favorites
Browser_Home 	Homepage
Volume_Mute 	Mute the volume
Volume_Down 	Lower the volume
Volume_Up 	Increase the volume
Media_Next 	Next Track
Media_Prev 	Previous Track
Media_Stop 	Stop
Media_Play_Pause 	Play/Pause
Launch_Mail 	Launch default e-mail program
Launch_Media 	Launch default media player
Launch_App1 	Launch My Computer
Launch_App2 	Launch Calculator
+========================================================================================================+
Other Keys
+========================================================================================================+
AppsKey 	Menu. This is the key that invokes the right-click context menu.
PrintScreen 	PrintScreen
CtrlBreak 	Ctrl+Pause or Ctrl+ScrollLock
Pause 	Pause or Ctrl+NumLock. While the Ctrl key is held down, the Pause key produces the key code of CtrlBreak and NumLock produces Pause, so use ^CtrlBreak in hotkeys instead of ^Pause.
Break 	Deprecated: Use the synonym Pause instead.
Help 	Help. This probably doesn't exist on most keyboards. It's usually not the same as F1.
Sleep 	Sleep. Note that the sleep key on some keyboards might not work with this.
SCnnn 	Specify for nnn the scan code of a key. Recognizes unusual keys not mentioned above. See Special Keys for details.
VKnn

Specify for nn the hexadecimal virtual key code of a key. This rarely-used method also prevents certain types of hotkeys from requiring the keyboard hook. For example, the following hotkey does not use the keyboard hook, but as a side-effect it is triggered by pressing either Home or NumpadHome:

^VK24::MsgBox You pressed Home or NumpadHome while holding down Control.

Known limitation: VK hotkeys that are forced to use the keyboard hook, such as *VK24 or ~VK24, will fire for only one of the keys, not both (e.g. NumpadHome but not Home). For more information about the VKnn method, see Special Keys.

Warning: Only Send, GetKeyName(), GetKeyVK(), GetKeySC() and #MenuMaskKey support combining VKnn and SCnnn. [v1.1.27+]: The presence of an invalid suffix prevents VKnn from being recognized. For example, vk1Bsc001:: raises an error in v1.1.27+, but sc001 was ignored (had no effect) in previous versions.

+========================================================================================================+
									++++++++++Joystick+++++++++
+========================================================================================================+

Joy1 through Joy32: The buttons of the joystick. To help determine the button numbers for your joystick, use this test script. Note that hotkey prefix symbols such as ^ (control) and + (shift) are not supported (though GetKeyState can be used as a substitute). Also note that the pressing of joystick buttons always "passes through" to the active window if that window is designed to detect the pressing of joystick buttons.

Although the following Joystick control names cannot be used as hotkeys, they can be used with GetKeyState:
JoyX, JoyY, and JoyZ: The X (horizontal), Y (vertical), and Z (altitude/depth) axes of the joystick.
JoyR: The rudder or 4th axis of the joystick.
JoyU and JoyV: The 5th and 6th axes of the joystick.
JoyPOV: The point-of-view (hat) control.
JoyName: The name of the joystick or its driver.
JoyButtons: The number of buttons supported by the joystick (not always accurate).
JoyAxes: The number of axes supported by the joystick.
JoyInfo: Provides a string consisting of zero or more of the following letters to indicate the joystick's capabilities: Z (has Z axis), R (has R axis), U (has U axis), V (has V axis), P (has POV control), D (the POV control has a limited number of discrete/distinct settings), C (the POV control is continuous/fine). Example string: ZRUVPD

Multiple Joysticks: If the computer has more than one joystick and you want to use one beyond the first, include the joystick number (max 16) in front of the control name. For example, 2joy1 is the second joystick's first button.

Note: If you have trouble getting a script to recognize your joystick, one person reported nggeeding to specify a joystick number other than 1 even though only a single joystick was present. It is unclear how this situation arises or whether it is normal, but experimenting with the joystick number in the joystick test script can help determine if this applies to your system.

+========================================================================================================+
+========================================================================================================+
+========================================================================================================+
*/

#NoEnv
#SingleInstance, Force
#Persistent
SetBatchLines, -1
SetMouseDelay, -1
Hotkey, %START%, START
Hotkey, %STOP%, STOP
CoordMode, Mouse, Screen
return

_CPS(m, c, a, s, d, r, oy, ox, t) {

    ; outputs clicks per second from peicewise function

    i := m/Sqrt(a**c)

    if((t-ox)>=(a+s)) {

        _cps := (m*(1-d)**((t-ox)-(a+s)))+oy

    } else if((0<=(t-ox)) && ((t-ox)<=a)) {

        _cps := (i*Sqrt((t-ox)**c))+oy

    } else {

        _cps := m+oy

    }

    Random, _cps, (_cps-r)*100, (_cps+r)*100
    _cps /= 100

    if (_cps < 0) {
        _cps := 0
    }

    return _cps

}




Movement(init_ox, init_oy, new_x, new_y) {

    x := 0+(-1*init_ox)+new_x
    y := 0+(-1*init_oy)+new_y

    return [x, y]

}

Muller(m,s) {

   ; Normally distributed random numbers of mean = m, std.dev = s by Box-Muller method

   Static i, Y

   if (i := !i) { ; every other call

      Random U, 0, 1.0
      Random V, 0, 6.2831853071795862

      U := sqrt(-2*ln(U))*s
      Y := m + U*sin(V)
      return m + U*cos(V)

   }

   return Y
}

Rad(deg){
    return deg*(3.14159265359/180)
}

RadialPos(mr, standardDeviation) {

   ; selects random point from radial distrabution function

   Random, theta, 0, 360
   dirx := 1
   diry := 1
   refa := 0

   while(true){
      m := Muller(mr, standardDeviation)
      if(m >= mr and m <= (mr*2)){
          break
      }
   }

   m := m-mr

   if (theta >= 0 && theta < 90) {

    refa := Rad(theta)

   } else if (theta >= 90 && theta < 180) {

    refa := Rad(180-theta)
    dirx := -1

   } else if (theta >= 180 && theta < 270) {

    refa := Rad(theta-180)
    dirx := -1
    diry := -1

   } else  {

    refa := Rad(360-theta)
    diry := -1

   }

   oy := diry*(m*Sin(refa))
   ox := dirx*(Sqrt(((m**2)-(oy**2))))

   return [Floor(ox), Floor(oy)]

}

START:

KEY_DOWN_1 := 0
KEY_UP_1 := 1
KEY_DOWN_1 := 2

SEQUENCE_STATE := KEY_DOWN_1

loop
{


    if(GetKeyState(CLICK, "P")){

        init_ox := 0
        init_oy := 0
        init_t := (a_hour*3600 + a_min*60 + a_sec)*1000 + a_msec
        active := true


        while (active)    {

            oArr := RadialPos(PRESETS[PRESET][2][1], PRESETS[PRESET][2][2])
            new_ox := oArr[1]
            new_oy := oArr[2]

            mArr := Movement(init_ox, init_oy, new_ox, new_oy)

            new_t := (a_hour*3600 + a_min*60 + a_sec)*1000 + a_msec

            _CPS := _CPS(PRESETS[PRESET][1][1],PRESETS[PRESET][1][2],PRESETS[PRESET][1][3],PRESETS[PRESET][1][4],PRESETS[PRESET][1][5],PRESETS[PRESET][1][6],PRESETS[PRESET][1][7],PRESETS[PRESET][1][8],(new_t-init_t))

            if (_CPS != 0) {

                Click Left
                DllCall("mouse_event", "UInt", 0x01, "UInt", mArr[1], "UInt", mArr[2])
                Sleep, (1000/_CPS)

            }

            init_ox := new_ox
            init_oy := new_oy

            if((GetKeyState(CLICK, "P") && SEQUENCE_STATE == KEY_UP_1)){
                SEQUENCE_STATE := KEY_DOWN_2
            }

            if(!GetKeyState(CLICK, "P") ){


                if((TOGGLE && (SEQUENCE_STATE == KEY_DOWN_2)) || (!TOGGLE)){

                    fArr := Movement(init_ox, init_oy, 0, 0)
                    DllCall("mouse_event", "UInt", 0x01, "UInt", fArr[1], "UInt", fArr[2])
                    active := false
                    SEQUENCE_STATE := KEY_DOWN_1

                }  else if(TOGGLE && (SEQUENCE_STATE == KEY_DOWN_1)){

                    SEQUENCE_STATE := KEY_UP_1

                }


            }

        }

    }

}

STOP:
ExitApp
