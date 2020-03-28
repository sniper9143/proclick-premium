#NoEnv
#SingleInstance, Force

SetBatchLines, 11
SetMouseDelay, 0

global PI = 3.14159265359

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
	return deg*(PI/180)	
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

active := false

~XButton2::

;main loop

loop
{
	
	
	if(GetKeyState("XButton2", "P")){
		
		init_ox := 0
		init_oy := 0
		init_t := (a_hour*3600 + a_min*60 + a_sec)*1000 + a_msec
		active := true
		
		while (active)	{   
		
			oArr := RadialPos(2, 1) 
			new_ox := oArr[1]
			new_oy := oArr[2]
			
			mArr := Movement(init_ox, init_oy, new_ox, new_oy)
			
			new_t := (a_hour*3600 + a_min*60 + a_sec)*1000 + a_msec
			
			CPS := CPS(20.0, 0.9, 200.0, 1000.0, 0.00009, 0.0, 0.0, 0.0, (new_t-init_t))
			
			if (CPS != 0) {
				Click Left
				MouseMove, mArr[1], mArr[2], 0, R
				Sleep, (1000/CPS)
			}
			
			init_ox := new_ox 
			init_oy := new_oy
			
			if(!GetKeyState("XButton2", "P")){
		
				oArr := Movement(init_ox, init_oy, 0, 0)
				MouseMove, oArr[1], oArr[2], 10, R
				active := false
			}
				 
		}
		
	}
	
}


