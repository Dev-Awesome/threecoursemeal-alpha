food_type = argument0;
cooking_score = argument1;

if(food_type = "springroll"){
    if(cooking_score > 100){
        endcard.sprite_index = endcard_springroll_great;
        audio_play_sound(jingle_success,0,0);
    }else if(cooking_score > 60){
        endcard.sprite_index = endcard_springroll_good;
        audio_play_sound(jingle_ok,0,0);
    }else{
        endcard.sprite_index = endcard_springroll_bad;
        audio_play_sound(jingle_bad,0,0);
    }
}
