/*
Do not touch these variables ^^

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

Welcom to proclick premium

To use this script there are several variables you can change


*/

PRESET := 1 ; pick 1-7 to change your preset


/*

+========================================================================================================+

											+=~ PRESETS ~=+

1 - JUMPER (Fast start up, medium ending, hard to detect)
2 - CLASSIC (Constant clicking no changes in cps and movement, easily detected)
3 - TURTLE (Slow startup and slow ending, hard to detect)
4 - SNIPER (Fast start up, slow ending, percise clicking with little movement)
6 - SPRAY (Fast startup, fast ending, clicking is very spread out, with a lot of movement)
7 - NEEDLE (Slow startup, slow ending, clicking is very percise)

+========================================================================================================+

*/



TOGGLE := true 

CLICK = XButton2

START = r

STOP = s

CPS = 20.0

PRESETS := [[[CPS, 0.9, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0],[200, 40]]]

/*
+========================================================================================================+
+========================================================================================================+
+========================================================================================================+
										+=~ LIST OF KEY NAMES ~=+
+========================================================================================================+
+========================================================================================================+
+========================================================================================================+
										
										

When Selecting a hotkey please use the key names in the "{}"

{F1} - {F24} Function keys. For example: {F12} is the F12 key. 
{!} ! 
{#} # 
{+} + 
{^} ^ 
{{} { 
{}} } 
{Enter} ENTER key on the main keyboard 
{Escape} or {Esc} ESCAPE 
{Space} SPACE (this is only needed for spaces that appear either at the beginning or the end of the string to be sent -- ones in the middle can be literal spaces) 
{Tab} TAB 
{Backspace} or {BS} Backspace 
{Delete} or {Del} Delete 
{Insert} or {Ins} Insert 
{Up} Up-arrow key on main keyboard 
{Down} Down-arrow down key on main keyboard 
{Left} Left-arrow key on main keyboard 
{Right} Right-arrow key on main keyboard 
{Home} Home key on main keyboard 
{End} End key on main keyboard 
{PgUp} Page-up key on main keyboard 
{PgDn} Page-down key on main keyboard 

{CapsLock} CapsLock (using SetCapsLockState is more reliable on NT/2k/XP). Sending {CapsLock} might require SetStoreCapslockMode Off beforehand. 
{ScrollLock} ScrollLock (see also: SetScrollLockState) 
{NumLock} NumLock (see also: SetNumLockState) 

{Control} or {Ctrl} CONTROL (technical info: sends the neutral virtual key but the left scan code) 
{LControl} or {LCtrl} Left CONTROL key (technical info: same as CONTROL for Win9x, but on NT/2k/XP it sends the left virtual key rather than the neutral one) 
{RControl} or {RCtrl} Right CONTROL key 
{Control Down} or {Ctrl Down} Holds the CONTROL key down until {Ctrl Up} is sent. XP/2000/NT: To hold down the left or right key instead, use {RCtrl Down} and {RCtrl Up}. 

{Alt} ALT (technical info: sends the neutral virtual key but the left scan code) 
{LAlt} Left ALT key (technical info: same as ALT for Win9x, but on NT/2k/XP it sends the left virtual key rather than the neutral one) 
{RAlt} Right ALT key (or AltGr, depending on keyboard layout) 
{Alt Down} Holds the ALT key down until {Alt Up} is sent. XP/2000/NT: To hold down the left or right key instead, use {RAlt Down} and {RAlt Up}. 

{Shift} SHIFT (technical info: sends the neutral virtual key but the left scan code) 
{LShift} Left SHIFT key (technical info: same as SHIFT for Win9x, but on NT/2k/XP it sends the left virtual key rather than the neutral one) 
{RShift} Right SHIFT key 
{Shift Down} Holds the SHIFT key down until {Shift Up} is sent. XP/2000/NT: To hold down the left or right key instead, use {RShift Down} and {RShift Up}. 

{LWin} Left Windows key 
{RWin} Right Windows key 
{LWin Down} Holds the left Windows key down until {LWin Up} is sent 
{RWin Down} Holds the right Windows key down until {RWin Up} is sent 

{AppsKey} Windows App key (invokes the right-click or context menu) 
{Sleep} Computer SLEEP key. 
{ASC nnnnn} Sends an ALT+nnnnn keypad combination, which can be used to generate special characters that don't exist on the keyboard. To generate ASCII characters, specify a number between 1 and 255. To generate ANSI characters (standard in most languages), specify a number between 128 and 255, but precede it with a leading zero, e.g. {Asc 0133}.

To generate Unicode characters, specify a number between 256 and 65535 (without a leading zero). However, this is not supported by all applications. Therefore, for greater compatibility and easier sending of long Unicode strings, use "Transform Unicode".

{vkXX}
{scYYY}
{vkXXscYYY}
Sends a keystroke that has virtual key XX and scan code YYY. For example: Send {vkFFsc159}. If the sc or vk portion is omitted, the most appropriate value is sent in its place.

The values for XX and YYY are hexadecimal and can usually be determined from the main window's View->Key history menu item. See also: Special Keys


{Numpad0} - {Numpad9} Numpad digit keys (as seen when Numlock is ON). For example: {Numpad5} is the digit 5. 
{NumpadDot} Numpad Period (as seen when Numlock is ON). 
{NumpadEnter} Enter key on keypad 
{NumpadMult} Numpad Multiply 
{NumpadDiv} Numpad Divide 
{NumpadAdd} Numpad Add 
{NumpadSub} Numpad Subtract 

{NumpadDel} Delete key on keypad (this key and the following Numpad keys are used when Numlock is OFF) 
{NumpadIns} Insert key on keypad 
{NumpadClear} Clear key on keypad (usually the '5' key when Numlock is OFF). 
{NumpadUp} Up-arrow key on keypad 
{NumpadDown} Down-arrow key on keypad 
{NumpadLeft} Left-arrow key on keypad 
{NumpadRight} Right-arrow key on keypad 
{NumpadHome} Home key on keypad 
{NumpadEnd} End key on keypad 
{NumpadPgUp} Page-up key on keypad 
{NumpadPgDn} Page-down key on keypad 

{Browser_Back} 2000/XP/Vista+: Select the browser "back" button 
{Browser_Forward} 2000/XP/Vista+: Select the browser "forward" button 
{Browser_Refresh} 2000/XP/Vista+: Select the browser "refresh" button 
{Browser_Stop} 2000/XP/Vista+: Select the browser "stop" button 
{Browser_Search} 2000/XP/Vista+: Select the browser "search" button 
{Browser_Favorites} 2000/XP/Vista+: Select the browser "favorites" button 
{Browser_Home} 2000/XP/Vista+: Launch the browser and go to the home page 
{Volume_Mute} 2000/XP/Vista+: Mute/unmute the master volume. Usually equivalent to SoundSet, +1, , mute 
{Volume_Down} 2000/XP/Vista+: Reduce the master volume. Usually equivalent to SoundSet -5 
{Volume_Up} 2000/XP/Vista+: Increase the master volume. Usually equivalent to SoundSet +5 
{Media_Next} 2000/XP/Vista+: Select next track in media player 
{Media_Prev} 2000/XP/Vista+: Select previous track in media player 
{Media_Stop} 2000/XP/Vista+: Stop media player 
{Media_Play_Pause} 2000/XP/Vista+: Play/pause media player 
{Launch_Mail} 2000/XP/Vista+: Launch the email application 
{Launch_Media} 2000/XP/Vista+: Launch media player 
{Launch_App1} 2000/XP/Vista+: Launch user app1 
{Launch_App2} 2000/XP/Vista+: Launch user app2 

{PrintScreen} Print Screen 
{CtrlBreak} Ctrl+break 
{Pause} Pause 

+========================================================================================================+
+========================================================================================================+
+========================================================================================================+
*/
#SingleInstance, Force
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
Hotkey, %START%, START
Hotkey, %STOP%, STOP
return

CPS(m, c, a, s, d, r, oy, ox, t) {
	
	; outputs clicks per second from peicewise function
	
	i := m/Sqrt(a**c)
	
	if((t-ox)>=(a+s)) {
		
		cps := (m*(1-d)**((t-ox)-(a+s)))+oy
		
	} else if((0<=(t-ox)) && ((t-ox)<=a)) {
		
		cps := (i*Sqrt((t-ox)**c))+oy
		
	} else {
		
		cps := m+oy
		
	}
	
	Random, cps, (cps-r)*100, (cps+r)*100
	cps /= 100
	
	if (cps < 0) {
		cps := 0
	}
	
	return cps 	
	
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
	
   return [ox, oy]
	
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
		
		
		while (active)	{   
		
			oArr := RadialPos(PRESETS[PRESET][2][1], PRESETS[PRESET][2][2]) 
			new_ox := oArr[1]
			new_oy := oArr[2]
			
			mArr := Movement(init_ox, init_oy, new_ox, new_oy)
			
			new_t := (a_hour*3600 + a_min*60 + a_sec)*1000 + a_msec
			
			CPS := CPS(			
			.	PRESETS[PRESET][1][1], 
			.	PRESETS[PRESET][1][2], 
			.	PRESETS[PRESET][1][3], 
			.	PRESETS[PRESET][1][4], 
			.	PRESETS[PRESET][1][5], 
			.	PRESETS[PRESET][1][6], 
			.	PRESETS[PRESET][1][7], 
			.	PRESETS[PRESET][1][8], 
			.	(new_t-init_t)			
			.	)
			
			if (CPS != 0) {
				Click Left
				MouseMove, mArr[1], mArr[2], 0, R
				Sleep, (1000/CPS)
			}
			
			init_ox := new_ox 
			init_oy := new_oy
			
			if((GetKeyState(CLICK, "P") && SEQUENCE_STATE == KEY_UP_1)){
				SEQUENCE_STATE := KEY_DOWN_2
			}
			
			if(!GetKeyState(CLICK, "P") ){
				
				
				if((TOGGLE && (SEQUENCE_STATE == KEY_DOWN_2)) || (!TOGGLE)){

					oArr := Movement(init_ox, init_oy, 0, 0)
					MouseMove, oArr[1], oArr[2], 0, R
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
