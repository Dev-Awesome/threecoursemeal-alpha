generate_note_type = argument0;
note_type = "";
if(generate_note_type = "knife"){
    note_type = notes_knife;
}else if(generate_note_type = "fork"){
    note_type = notes_fork;
}else if(generate_note_type = "spatula"){
    note_type = notes_frying;
}
temp_obj = instance_create(-10, 0, music_note);
temp_obj.sprite_index = note_type;
temp_obj2 = instance_create(490, 0, music_note);
temp_obj2.sprite_index = note_type;
temp_obj2.image_xscale = -1;
temp_obj2.movement_direction = -1;
