//first_station_generate(level 1-4);
stage = argument0;
station_controller.current_dish = stage;
if(stage = 1){
    station_controller.current_station = instance_create(240,160,background_counter);
    station_controller.current_equipment = instance_create(240,160,cuttingboard);
}else if(stage = 2){
    station_controller.current_station = instance_create(240,160,background_counter);
    station_controller.current_equipment = instance_create(240,160,cuttingboard);
}else if(stage = 3){
    station_controller.current_station = instance_create(240,160,background_counter);
    station_controller.current_equipment = instance_create(240,160,burner);
}
