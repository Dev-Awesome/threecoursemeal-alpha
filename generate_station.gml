station_type = argument0;
station_location = argument1;
if(station_type = "cutting"){
    station_controller.next_equipment = instance_create(station_location,160,cuttingboard);
}else if(station_type = "folding"){
    station_controller.next_equipment = instance_create(station_location,160,springroll_wrapper);
}else if(station_type = "burner"){
    station_controller.next_equipment = instance_create(station_location,160,burner);
}
