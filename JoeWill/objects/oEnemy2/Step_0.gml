if(sign(hs) == 1){
if (place_meeting(x+32,y+1,oWall) && !place_meeting(x+hs,y,oWall))
{
	x = x + hs;
}else{
	hs = -hs;
}
}else{
if (place_meeting(x-32,y+1,oWall) && !place_meeting(x+hs,y,oWall)) 
{
	x = x + hs;
}else{
	hs = -hs;
}
}
