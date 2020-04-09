var cause = argument0;
if(level == 1){
transition(TRANS_MODE.GOTO,rOne);
}else if(level == 2){
transition(TRANS_MODE.GOTO,rTwo);
}
vsp = 0;
hsp = 0;
show_debug_message(cause);