hit_level = argument0;
y_offset = -80;
x_offset = 0;
temp_inst = instance_create(music_pulse.x + x_offset, music_pulse.y + y_offset, beat_hit_indicator);
if(hit_level = 0){
    temp_inst.sprite_index = text_miss;
}else if(hit_level = 1){
    temp_inst.sprite_index = text_wow;
}else if(hit_level = 2){
    temp_inst.sprite_index = text_perfection;
}
