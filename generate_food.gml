food = argument0;
food_parts[0] = undefined;
part_counter = 0;
if(food = "carrot"){
    station_controller.food_state = 12;
    station_controller.food_max_state = 12;
    station_controller.food_type = "carrot";
    part_counter = 7 
    for(var i = 0;i < 7; i++){
        food_parts[i,0] = instance_create(240,160,food_object);
        food_parts[i,0].sprite_index = carrot_parts;
        food_parts[i,0].image_index = i;
    }
    for(var i = 0; i < part_counter;i++){
    station_controller.food_array[i,0] = food_parts[i,0];
}
}
if(food = "beans"){
    station_controller.food_state = 10;
    station_controller.food_max_state = 10;
    station_controller.food_type = "beans";
    part_counter = 5;
    for(var i = 0;i < part_counter;i++){
        for(var j = 0; j < 4; j++){
            food_parts[i,j] = instance_create(240,120+(j*30),food_object);
            food_parts[i,j].sprite_index = bean_parts;
            food_parts[i,j].image_index = i;
        }
    }
    for(var i = 0; i < part_counter;i++){
    for(var j = 0; j < 4; j++){
        station_controller.food_array[i,j] = food_parts[i,j];
    }
}
}
if(food = "springroll"){
    station_controller.food_state = 20;
    station_controller.food_max_state = 20;
    station_controller.food_type = "springroll";
    part_counter = 3 
    for(var i = 0;i < 3; i++){
        food_parts[i,0] = instance_create(240,160,food_object);
        food_parts[i,0].sprite_index = springroll_filling_miss;
        temp_frame = i;
        food_parts[i,0].image_index = temp_frame;
        food_parts[i,0].image_alpha = 0;
    }
    for(var i = 0; i < part_counter;i++){
        station_controller.food_array[i,0] = food_parts[i,0];
    }
}
if(food = "frying_springroll"){
//4 for temp, 4 for pour, 2 for pan, 8 for oil, 14 for fry, 2 for lift
    station_controller.food_state = 34;
    station_controller.food_max_state = 34;
    station_controller.food_type = "frying_springroll";
    part_counter = 7;
    food_parts[0,0] = instance_create(240,200,temperature_knob_object);
    food_parts[1,0] = instance_create(240,160,temperature_gauge);
    food_parts[2,0] = instance_create(240,160,fryingpan);
    food_parts[3,0] = instance_create(240,160,oil_pour_object);
    food_parts[4,0] = instance_create(240,160,springroll_frying_object);
    food_parts[4,0].roll_number = 1;
    food_parts[4,0].depth += 1;
    food_parts[4,0].y += 5;
    food_parts[5,0] = instance_create(240,160,springroll_frying_object);
    food_parts[5,0].roll_number = 2;
    food_parts[5,0].depth += 2;
    food_parts[5,0].y -= 20 ;
    food_parts[6,0] = instance_create(240,160,springroll_frying_object);
    food_parts[6,0].roll_number = 3;
    food_parts[6,0].depth += 3;
    food_parts[6,0].y -= 45;
    for(var i = 0; i < part_counter; i++){
        food_parts[i,0].image_alpha = 0;
    }
    food_parts[0,0].image_alpha = 1;
    food_parts[1,0].image_alpha = 1;
    
}
station_controller.cooking = true;
