if(station_controller.current_dish = 1){
    if(current_stage = 0){
        generate_food("beans");
        current_stage += 1;
    }else if(current_stage = 1){
        generate_food("carrot");
        current_stage += 1;
    }else if(current_stage = 2){
        generate_food("carrot");
        current_stage += 1;
    }else if (current_stage = 3){
        move_stage(-1,"folding");
        current_stage += 1;
        next_food = "springroll";
    }else if (current_stage = 4){
        move_stage(-1,"folding");
        current_stage += 1;
        next_food = "springroll";
    }else if (current_stage = 5){
        move_stage(-1,"folding");
        current_stage += 1;
        next_food = "springroll";
    }else if(current_stage = 6){
        move_stage(-1, "burner");
        next_food = "frying_springroll";
        current_stage += 1;
    }else if(current_stage = 7){
        instance_create(240,160,cooking_screenfade)
    }
}else if(station_controller.current_dish = 2){
    
}
