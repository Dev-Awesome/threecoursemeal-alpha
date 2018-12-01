//check_closest_beat();
//activated by song_controller with music_pulse variables
beat_interval = music_pulse.true_interval;
next_beat = music_pulse.next_frame;
current_frame = music_pulse.overall_timer;
upcoming_beat = music_pulse.current_beat;
beat_tolerance = 3;
last_beat = next_beat - beat_interval;
closest_beat = 0;
perfect_timing = 1;
if(music_pulse.touching_notes = true){
music_pulse.touching_notes = false;
if(abs(last_beat - current_frame) <= beat_tolerance){
    closest_beat = last_beat;
    if(abs(current_frame - last_beat)) > (abs(current_frame - next_beat)){
        if(abs(current_frame - next_beat) <= beat_tolerance){
            closest_beat = next_beat;
        }
    }
}else if(abs(current_frame - next_beat) <= beat_tolerance){
    closest_beat = next_beat;
}
if(closest_beat = last_beat){
    music_pulse.target_beat = music_pulse.current_beat - 1;
}else if(closest_beat = next_beat){
    music_pulse.target_beat = music_pulse.current_beat;
}
if(music_pulse.last_beat_hit != closest_beat){
if(abs(closest_beat - current_frame) <= perfect_timing){
    music_pulse.last_beat_hit = closest_beat;
    generate_notehit_text(2);
    music_pulse.change_beat_color = "green";
    overall_game_info.level_score += 2;
    music_pulse.touching_notes = false;
    return 2;
}else if(abs(closest_beat - current_frame) <= beat_tolerance){
    music_pulse.last_beat_hit = closest_beat;
    generate_notehit_text(1);
    music_pulse.change_beat_color = "yellow";
    overall_game_info.level_score += 0;
    music_pulse.touching_notes = false;
    return 1;
}
}
}
generate_notehit_text(0);
music_pulse.change_beat_color = "red";
overall_game_info.level_score -= 2;
return 0;
