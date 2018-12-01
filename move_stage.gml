move_direction = argument0;
new_station = argument1;
station_controller.movement_direction = move_direction;
station_controller.moving_stations = true;
new_x_location = 240 + (move_direction*-1*480);
new = instance_create(new_x_location,160,background_counter);
station_controller.next_station = new;
generate_station(new_station,new_x_location);
