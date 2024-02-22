pico-8 cartridge // http://www.pico-8.com
version 35
__lua__
--main tab--

--the initialisation function that's--
--called once at the beginning of the--
--program.--  
function _init()

	music(0)
	reset_game()
	
end

--the update function that is called--
--thirty times per second.--
function _update()
	
	--updates the frames counter.--
	frames_counter += 1
	
	--calls the adequate update function--
	--in accordance with the global game_mode--
	--variable.--
	if game_mode == "game start" then
		update_game_start()
	elseif game_mode == "game run" then
		update_game_run()
	elseif game_mode == "present wave" then
		update_present_wave()
	elseif game_mode == "game win" then
		update_game_win()
	elseif game_mode == "game over" then
		update_game_over()
	--this next branch should not be--
	--reached.--
	else
		print("error. game crashed during updating!", 15, 63, 8)
	end
	
end

--the draw function that is generally--
--called thirty times per second.--
function _draw()
	
	--makes sure the screen won't be--
	--shaken if the player is already--
	--dead.--
	if (player.current_energy > 0) screen_shake()
	
	--calls the adequate draw function--
	--in accordance with the global game_mode--
	--variable.--
	if game_mode == "game start" then
		draw_game_start()
	elseif game_mode == "game run" then
		draw_game_run()
	elseif game_mode == "present wave" then
		draw_present_wave()
	elseif game_mode == "game win" then
		draw_game_win()
	elseif game_mode == "game over" then
		draw_game_over()
	--this next branch should not be--
	--reached.--
	else
		print("error. game crashed during ", 0, 63, 8)
	end
		
end

--resets the game to initial state.--
function reset_game()

	--general initialisation--
 screen_colour = colours.black
 ui_colour = colours.yellow
 current_score = 0
 firing_effect = 5
 invulnerability_timer = 0
 projectiles_timer = 0
 frames_counter = 0
 keys_lock = 0
 wave_number = 1
 wave_timer = 60
	game_mode = "game start"
	enemies_fly_in_current_frame = 0
 enemies_fly_in_duration = 30
 front_row = 4
 shake_magnitude = 0
 is_final_wave = false
	
 --player--
 player = {
 	current_sprite = sprites.ship,
 	sprite_width = misc.eight_pixels,
 	sprite_height = misc.eight_pixels,
 	default_sprite = sprites.ship,
  left_turn_sprite = sprites.ship_turning_left,
  right_turn_sprite = sprites.ship_turning_right,
  exhaust_sprite = sprites.exhaust_first_stage,
  current_energy = 40,
  x_position = 63,
  y_position = 105,
  x_speed = 0,
  y_speed = 0,
  shake_timer = 0
 }
 
 --projectiles--
 projectiles = {}
 
 --enemy_projectiles--
 enemy_projectiles = {}
	
	--starfield--
	number_of_stars = 100
	stars = {}
	stars_colours = {first_colour = colours.taupe, second_colour = colours.dark_blue, third_colour = colours.white}
	
	moon_sprite = sprites.moon
	moon_x_position = 23
	moon_y_position = 112
	moon_speed = 0.7
	
	for i = 1, number_of_stars do
	
		local star = {
			x_position,
			y_position,
			x_speed = 0,
			y_speed
		}
		
		star.x_position = flr(rnd(128))
		star.y_position = flr(rnd(128))
		star.y_speed = 0.6 + rnd(2)
		
		add(stars, star)
		
	end
	
	--enemies--
	enemies = {}

	--explosions--
	explosions = {}
	
	--particles--
	particles = {}
	
	--enemy hit effects--
	enemy_hit_effects = {}
	number_of_particles = 25
	
end
-->8
--a tab for update functions--

--an update function for "game start" mode.--
function update_game_start()
	
	--checks for a button press to--
	--clear the opening screen.--
	if btnp() != 0 then
		game_mode = "present wave"
		music(-1)
	end
	
end

--an update function for "game run" mode.--
function update_game_run()
	
	--resets values.--
	player.current_sprite = player.default_sprite
	
	if (player.exhaust_sprite > sprites.exhaust_third_stage) player.exhaust_sprite = sprites.exhaust_first_stage
	 
 for i = 1, number_of_stars do
 	if (stars[i].y_position > screen_edges.lower) stars[i].y_position = 0 
 end
 
 if moon_y_position > screen_edges.lower then
 	moon_y_position = 5
 	moon_x_position = ceil(rnd(119))
 end
	 
 enemies_fly_in_current_frame += 1
 
 --starfield--
 for star in all(stars) do
 	move_object(star)
 end
 moon_y_position += moon_speed  
	  
	--player movement input--
	if btn(keys.left) then
	 player.x_speed = -1
	 player.current_sprite = player.left_turn_sprite
	end
	
	if btn(keys.right) then
	 player.x_speed = 1
	 player.current_sprite = player.right_turn_sprite
	end
	
	if btn(keys.up) then
		player.y_speed = -1
		sfx(4)
	end
	
	if btn(keys.down) then
		player.y_speed = 1
		sfx(3)
	end
	
	--updates player position.--
	move_object(player)
	player.x_speed = 0
	player.y_speed = 0
	
	--updates the exhaust sprite.--
	player.exhaust_sprite += 0.4
	
	--updates projectiles position.--
	for projectile in all(projectiles) do
		move_object(projectile)
		if (projectile.y_position < screen_edges.upper - 7) del(projectiles, projectile)
	end
	
	--updates enemies.--
	for enemy in all(enemies) do
		enemy_behaviour(enemy)
	end
	
	--checks whether it's the final wave,--
	--and the boss has arrived at its target--
	--position.--
	if is_final_wave and enemies[1].state == "defend" then
 	set_remaining_enemies_to_attack()
	elseif (not is_final_wave) and is_front_row_mostly_cleared() then
		set_remaining_enemies_to_attack()
		front_row -= 1		
 end
	
	--updates enemy projectiles position.--
	for enemy_projectile in all(enemy_projectiles) do
		move_object(enemy_projectile)
	end
	
	--checks for collision between projectiles and enemies.--
	for projectile in all(projectiles) do
		for enemy in all(enemies) do
			if are_colliding(projectile, enemy) then
			
				sfx(7)
				del(projectiles, projectile)
				enemy.health_points -= 1
				enemy.flash_timer = 3
				
				local enemy_hit_effect = {
					shockwave_x_position = enemy.x_position,
					shockwave_y_position = enemy.y_position,
					shockwave_radius = 2,
					particles = {} 
				}
				
				for i = 1, number_of_particles do
					local particle = {
						x_position = enemy.x_position + 4,
						y_position = enemy.y_position + 4,
						x_speed = (rnd() - 0.5) * 1.5,
						y_speed = (rnd() - 0.5) * 1.5,
						colour = enemy.sprite_first_colour 
					}
					add(enemy_hit_effect.particles, particle)
				end
				
				add(enemy_hit_effects, enemy_hit_effect)
				
				if enemy.health_points <= 0 then	
					
					local centre_particle = {
						x_position = enemy.x_position + 4,
						y_position = enemy.y_position + 4,
					 x_speed = 0,
					 y_speed = 0,
					 life_span_random_boost = 0,
					 life_span = 50,
					 size = 13,
					 colour = colours.white,
					 centre_flag = true	
					}
					
					add(particles, centre_particle)
					
					for i = 1, 30 do
					
						local particle = {
							x_position = enemy.x_position + 4,
							y_position = enemy.y_position + 4,
							x_speed = (rnd() - 0.5) * 3,
							y_speed = (rnd() - 0.5) * 3,
							life_span_random_boost = rnd(30),
							life_span = 50,
							size = rnd(8),
							colour = colours.white,
							centre_flag = false
						}
						
						add(particles, particle)
					
					end
					
					current_score += 10
					del(enemies, enemy)
					if (rnd() > 0.5) set_attacking_enemy()
					
				end	
			end
		end
	end
	
	--checks for collision between player and enemies.--
	if invulnerability_timer <= 0 then
		for enemy in all(enemies) do
			if are_colliding(player, enemy) then		
				player.current_energy -= 10
				shake_magnitude = 6
				invulnerability_timer = 30
	  	sfx(7)
			end
		end
	else
		invulnerability_timer -= 1	
	end
	
	--checks for collision between player--
	--and enemy projectiles.--
	if invulnerability_timer <= 0 then
		for enemy_projectile in all(enemy_projectiles) do
			if are_colliding(player, enemy_projectile) then		
				player.current_energy -= 10
				shake_magnitude = 6
				invulnerability_timer = 30
	  	sfx(7)
			end
		end	
	end
		
	if player.current_energy <= 0 then
		game_mode = "game over"
		keys_lock = frames_counter + misc.keys_lock_delay
		return
	end
		
	--transports player position.--
	if player.x_position < screen_edges.left  then player.x_position = 0
	elseif player.x_position > screen_edges.right - 8 then player.x_position = 119
	elseif player.y_position < screen_edges.upper then player.y_position = 0
	elseif player.y_position > screen_edges.lower - 8 then player.y_position = 119
	end
	
	--shooting input--	
	if btn(5) and projectiles_timer <= 0 then
			
		local projectile = {
			sprites = {1, 2, 3, 4},
			sprites_table_index = 1,
			animation_speed = 0.7,
			current_sprite = 1,
			sprite_width = misc.eight_pixels,
			sprite_height = misc.eight_pixels,
			x_position = player.x_position,
			y_position = player.y_position - 2,
			x_speed = 0,
			y_speed = -3.2,
			shake_timer = 0
		}
		
		add(projectiles, projectile)
		firing_effect = 5
		sfx(6)
		projectiles_timer = 10
		
	end
	
	--checks wether all the enemies in--
	--the current wave been wiped out, and--
	--therefore a new wave should be summoned.--
	if are_all_enemies_cleared() then
		enemies_fly_in_current_frame = 0
		front_row = 4
		start_next_wave()
	elseif frames_counter % 30 == 0 then 
		set_attacking_enemy()
	end		
	
	--updates values.--
	projectiles_timer -= 1
	firing_effect -= 1

end

--an update function for "present wave" mode.--
function update_present_wave()
	
	if are_all_enemies_cleared() then
		for row = 1, 4 do
			for column = 1, 10 do
				spawn_enemy((column * 12) - 5, row * 10 - 5, waves[wave_number][row][column], column * 2, row)
			end
		end
	end
	
	if (wave_timer <= 0) game_mode = "game run"
	
	wave_timer -= 1
	
end

--an update function for "game win" mode.--
function update_game_win()
	
	if (frames_counter < keys_lock) return
	
	if btnp() != 0 then
		reset_game()
		game_mode = "present wave"
	end
	
end

--an update function for "game over" mode.--
function update_game_over()

	if (frames_counter < keys_lock) return
	
	if btnp() != 0 then
		reset_game()
		game_mode = "present wave"
	end

end
-->8
--a tab for draw functions--

--a draw function for "game start" mode.--
function draw_game_start()
	
	cls(10)
	print("welcome to the game!!", 22, 63, 0)
	print("press any button to start", 15, 75, blinking_text())
	
end

--a draw function for "game run" mode.--
function draw_game_run()

	--clears the screen.--
	cls(screen_colour)
	
	--draws the starfield.--
	for star in all(stars) do
		if star.y_speed < 1.2 then
			pset(star.x_position, star.y_position, stars_colours.first_colour)
		elseif star.y_speed >= 1.2 and star.y_speed < 1.8 then
			pset(star.x_position, star.y_position, stars_colours.second_colour)	
  elseif star.y_speed >= 1.8 then
  	pset(star.x_position, star.y_position, stars_colours.third_colour)
  end	 
	end
	
	spr(moon_sprite, moon_x_position, moon_y_position)
		
	--draws the ui.--
	print("score:" .. current_score, 55, 122, ui_colour)
	print("energy:", 1, 115, ui_colour)
 rect(1, 121, 40, 126, ui_colour)
 rectfill(1, 121, player.current_energy, 126, ui_colour)
 	
	--draws the player spaceship.--
	if invulnerability_timer <= 0 then
	 draw_object(player)
		spr(player.exhaust_sprite, player.x_position, player.y_position + misc.eight_pixels)
	else
	--invulnerability state--
		if sin(frames_counter / 7) < 0 then
			draw_object(player)
			spr(player.exhaust_sprite, player.x_position, player.y_position + misc.eight_pixels)
		end
	end
	
	--draws projectiles.--
	for projectile in all(projectiles) do
		if (firing_effect > 0) rectfill(player.x_position - firing_effect + 4, player.y_position - firing_effect, player.x_position + firing_effect + 4, player.y_position + firing_effect, 7) 	
		draw_object(projectile)
		animate_object(projectile)
	end
	
	--draws enemy projectiles.--
	for enemy_projectile in all(enemy_projectiles) do
		draw_object(enemy_projectile)
		animate_object(enemy_projectile)
	end
	
	--draws enemies.--
	for enemy in all(enemies) do
		
		--makes the enemies flash.--
		if enemy.flash_timer > 0 then
		 enemy.flash_timer -= 1
		 for i = 1, 15 do
		 	pal(i, colours.white)
		 end
		end
		
		draw_object(enemy)
		animate_object(enemy)
		pal()
		
	end
	
	--draws enemy hit effects.--
	hit_effects()
	
	--draws explosions.--
	explode()	

end

--a draw function for "present wave" mode.--
function draw_present_wave()

	draw_game_run()
	print("wave:"..wave_number, 55, 35, blinking_text())

end

--a draw function for "game win" mode.--
function draw_game_win()

	print("congrats on winning the game!!!", 2, 63, blinking_text())
	print("press any button to play again", 4, 73, blinking_text())

end

--a draw function for "game over" mode.--
function draw_game_over()
	
	print("game over", 46, 63, blinking_text())
	print("press any button to play again", 4, 73, blinking_text())
	
end
-->8
--to do tab--

--*rework the sound effects.
-->8
--auxiliary functions tab--

--a function that makes text blink.
do

	local text_colour_index = 1
	
 function blinking_text()
 		
		local colours = {colours.red, colours.red, colours.pink, colours.pink, colours.bright_blue, colours.bright_blue, colours.bright_blue, colours.bright_blue, colours.pink, colours.pink, colours.red, colours.red}
		if (text_colour_index > #colours) text_colour_index = 1
		text_colour_index += 1
		return colours[text_colour_index]
			
 end
 
end

--a function that draws an object.--
function draw_object(object)
	
	local x_position_copy = object.x_position
	local y_position_copy = object.y_position
	
	if object.shake_timer > 0 then
		object.shake_timer -= 1
		if frames_counter % 4 < 2 then
			x_position_copy += 1.5	
		end
	end

	spr(object.current_sprite, x_position_copy, y_position_copy, object.sprite_width / misc.eight_pixels, object.sprite_height / misc.eight_pixels)

end

--a function that animates an object.--
function animate_object(object)

	object.sprites_table_index += object.animation_speed
	if (flr(object.sprites_table_index) > #object.sprites) object.sprites_table_index = 1
	object.current_sprite = object.sprites[flr(object.sprites_table_index)]
	
end

--a function that checks whether two objects collide.--
function are_colliding(first_object, second_object)

 local are_objects_colliding = true
 
 --check whether the first object is above the second one
 if first_object.y_position > second_object.y_position + second_object.sprite_height - 1 then
 	are_objects_colliding = false
 --check whether the first object is under the second one
 elseif first_object.y_position + first_object.sprite_height - 1 < second_object.y_position then
 	are_objects_colliding = false
 --check whether the first object is to the left of the second one	
 elseif first_object.x_position + first_object.sprite_width - 1 < second_object.x_position then
 	are_objects_colliding = false
 --check whether the first object is to the right of the second one
 elseif first_object.x_position > second_object.x_position + second_object.sprite_width - 1 then
  are_objects_colliding = false
 end
 
 return are_objects_colliding
 
end

--a function that generates hit effects.--
function hit_effects()
	
	for enemy_hit_effect in all(enemy_hit_effects) do
		
		--generates a shockwave.--
		if enemy_hit_effect.shockwave_radius <= 7 then 
			circ(enemy_hit_effect.shockwave_x_position + 4, enemy_hit_effect.shockwave_y_position + 4, enemy_hit_effect.shockwave_radius, colours.light_grey)
			enemy_hit_effect.shockwave_radius += 1			
		end
		
		--generates particles.--
		for particle in all(enemy_hit_effect.particles) do
			pset(particle.x_position, particle.y_position, particle.colour)
			move_object(particle)		
			if (is_beyond_screen_edges(particle.x_position, particle.y_position)) del(enemy_hit_effects, enemy_hit_effect)
		end
			
	end
	
end

--a function that generates explosions of enemies.--
function explode()
	
	for particle in all(particles) do
		
		local initial_life_span = 50 + particle.life_span_random_boost
		
		if not particle.centre_flag then
			if particle.life_span >= initial_life_span - 8 then
				particle.colour = colours.yellow
			elseif particle.life_span >= initial_life_span - 18 then
				particle.colour = colours.orange
			elseif particle.life_span >= initial_life_span - 30 then   
				particle.colour = colours.red
			else
				particle.colour = colours.dark_grey	
			end
		end
		
		circfill(particle.x_position, particle.y_position, particle.size, particle.colour)
		circ(particle.x_position, particle.y_position, particle.size * 1.5, particle.colour)
		
		move_object(particle)
		particle.x_speed *= 0.84
		particle.y_speed *= 0.84
		particle.life_span -= 1
		
		if not particle.centre_flag then
			particle.size -= 0.15
		else
			particle.size -= 0.8
		end
		
		if (particle.size <= 0) del(particles, particle)
					
	end

end

--a function that spawns an enemy.--
function spawn_enemy(x_position, y_position, enemy_type, delay, row)

	local enemy = {
		state = "fly",
		enemy_type = enemy_type,
		x_position = x_position,
		x_target_position = x_position,
		y_position = y_position - 48,
		y_start_position = y_position - 48,
		y_target_position = y_position,
		x_speed = 0,
		y_speed = 0,
		health_points = 1,
		flash_timer = 0,
		sprites_table_index = 1,
		delay = delay,
		shake_timer = 60,
		row = row
	}
	
	--adds properties to the enemy object--
	--according to its type.--
	if enemy_type == 1 then
	
	 enemy.sprites = {28, 29, 30, 31}
		enemy.current_sprite = enemy.sprites[1]
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.05
  enemy.projectiles_frequency = rnd()
  	
	elseif enemy_type == 2 then
	
	 enemy.sprites = {20, 21}
		enemy.current_sprite = 20
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.35
		
	elseif enemy_type == 3 then
	
		enemy.sprites = {22, 23, 24, 25}
		enemy.current_sprite = 22
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.1
		enemy.is_x_speed_set = false
		
	elseif enemy_type == 4 then
	
		enemy.sprites = {16, 18}
		enemy.current_sprite = 16
		enemy.sprite_width = misc.eight_pixels * 2
		enemy.sprite_height = misc.eight_pixels * 2
		enemy.animation_speed = 0.1
		enemy.health_points = 5
		enemy.y_position -= 20
		enemy.y_start_position = enemy.y_position
		
	else
		return
	end 
	
	add(enemies, enemy)

end

--a function that checks wether a given--
--position is beyond the screen's edges.--
function is_beyond_screen_edges(x_position, y_position)
	return x_position < screen_edges.left or x_position > screen_edges.right or y_position < screen_edges.upper or y_position > screen_edges.lower 
end

--a function that starts a new--
--wave of enemies.--
function start_next_wave()
	
	wave_number += 1
	
	--switches the is_final_wave flag.--
	if (wave_number == 4) is_final_wave = true
	
	if wave_number == 5 then
	 game_mode = "game win"
	 keys_lock = frames_counter + misc.keys_lock_delay
	else
		wave_timer = 60
		game_mode = "present wave"
	end
	
end

--a function that checks whether all--
--the enemies in the current wave--
--were eliminated.--
function are_all_enemies_cleared()
	return #enemies == 0
end

--a function that filters the given--
--table utilising the given filtering--
--function.--
function filter(table, filtering_function)
	
	local filtered_table = {}
	
	for element in all(table) do
		if (filtering_function(element)) add(filtered_table, element)
	end
	
	return filtered_table
	
end

--a function that checks whether--
--the given enemy object is--
--currently in "defend" state.--
function is_in_defend_state(enemy)
	return enemy.state == "defend"
end

--a function that checks whether--
--all the enemies are in defend state.--
function are_in_defend_state()
	
	output = true
	
	for enemy in all(enemies) do
		if enemy.state != "defend" then
			output = false
			break
		end
	end
	
	return output
	
end

--a function that checks whether--
--the given enemy object is located--
--at the frontmost row.--
function is_in_front_row(enemy)
	return enemy.row == front_row
end

--a function that checks whether--
--the frontmost row of enemies has--
--been cleared.--
function is_front_row_cleared()

	output = true
	
	--checks whether there is an ememy--
	--at the frontmost row.--
	for enemy in all(enemies) do
		if enemy.row == front_row then
			output = false
			break
		end
	end
	
	return output
	
end

--a function that checks whether--
--the majority of the front row--
--has been cleared, thus enemies--
--from a deeper row should start attacking.--
function is_front_row_mostly_cleared()
	
	output = true
	local number_of_enemies_alive = 0
	
	for enemy in all(enemies) do
	
		if number_of_enemies_alive > 2 then
			output = false
			break
		end
		
		if enemy.row == front_row then
			number_of_enemies_alive += 1
		end
		
	end
	
	return output

end

--a function that sets the remainder--
--of the enemies to attack state.--
function set_remaining_enemies_to_attack()

	for enemy in all(enemies) do
		
		if enemy.row == front_row and enemy.state != "attack" then
			enemy.state = "attack"
		 enemy.delay = 30
		 enemy.shake_timer = 30
		end
		
	end

end

--a function that performs quadratic--
--in easing.-- 
function quadratic_in_easing(current_frame, starting_position, delta_position, duration)

	current_frame /= duration
	
	return delta_position * current_frame * current_frame + starting_position

end

--a function that performs quadratic--
--out easing.--
function quadratic_out_easing(current_frame, starting_position, delta_position, duration)

	current_frame /= duration
	
	return -delta_position * current_frame * (current_frame - 2) + starting_position

end

--a function that performs circular--
--in easing.--
function circular_in_easing(current_frame, starting_position, delta_position, duration)
	
	current_frame /= duration
	
	return -delta_position * (sqrt(1 - (current_frame * current_frame)) - 1) + starting_position

end

--a function that performs cubic--
--out easing.--
function cubic_out_easing(current_frame, starting_position, delta_position, duration)
	
	current_frame /= duration
	current_frame -= 1
	
	return delta_position * (current_frame * current_frame * current_frame + 1) + starting_position

end

--a function that moves an object.--
function move_object(object)
	
	object.x_position += object.x_speed
	object.y_position += object.y_speed
	
end

--a function that changes the--
--state of one of the enemies--
--to "attack".--
function set_attacking_enemy()
	
	filtered_enemy = rnd(filter(filter(enemies, is_in_front_row), is_in_defend_state))
	
	if filtered_enemy != nil then
		filtered_enemy.state = "attack"
		filtered_enemy.delay = 30
		filtered_enemy.shake_timer = 30
	end

end

--a function that shots an enemy--
--projectile.-- 
function shoot_projectile_enemy(enemy, angle, speed)
	
	local enemy_projectile = {
		sprites = {6, 7, 8},
		sprites_table_index = 1,
		animation_speed = 0.5,
		current_sprite = 6,
		sprite_width = misc.eight_pixels,
		sprite_height = misc.eight_pixels,
		x_position = enemy.x_position,
		y_position = enemy.y_position - 2,
		x_speed = sin(angle) * speed,
		y_speed = cos(angle) * speed,
		shake_timer = 0	
	}
	
	add(enemy_projectiles, enemy_projectile)
	
end

--a function that shoots spreading--
--enemy projectiles.--
function shoot_spreading_projectiles_enemy(enemy, number_of_projectiles, speed, base_angle)
	
	for i = 0, number_of_projectiles do
	 shoot_projectile_enemy(enemy, cos(rnd()), speed)
	end
	
end

--a function that shoots an aimed--
--enemy projectile.--
function shoot_aimed_projectile_enemy(enemy, speed)
	shoot_projectile_enemy(enemy, atan2(player.y_position - enemy.y_position, player.x_position - enemy.x_position), speed)
end

--a function that performs a--
--screen shake.--
function screen_shake()

	camera(rnd(shake_magnitude) - (shake_magnitude / 2), rnd(shake_magnitude) - (shake_magnitude / 2))
	
	if shake_magnitude > 20 then
		shake_magnitude *= 0.9
	
	elseif shake_magnitude > 0 then 
		shake_magnitude -= 1
	else 
		shake_magnitude = 0
	end
	
end
-->8
--mappings tab--

colours = {

	black = 0,
 dark_blue = 1,
 purple = 2,
 dark_green = 3,
 brown = 4,
 taupe = 5,
 light_grey = 6,
 white = 7,
 red = 8,
 orange = 9,
 yellow = 10,
 bright_green = 11,
 bright_blue = 12,
 dark_grey = 13,
 pink = 14,
 beige = 15
 
}
           
sprites = {

	projectile = 1,
	exhaust_first_stage = 52,
	exhaust_second_stage = 53,
	exhaust_third_stage = 54,
	enemy = 28,
	moon = 51,
	ship_turning_left = 48,
	ship = 49,
	ship_turning_right = 50,
	explosion_first_stage = 64,
	explosion_second_stage = 66,
	explosion_third_stage = 68,
	explosion_fourth_stage = 70,
	explosion_fifth_stage = 72
	
}

screen_edges = {
	left = 0,
	right = 127,
	upper = 0,
	lower = 127
}

keys = {
	
	left = 0,
	right = 1,
	up = 2,
	down = 3,
	circle = 4,
	cross = 5

}

misc = {
	
	keys_lock_delay = 40,
	eight_pixels = 8,
	pi = 3.1415

}


waves = { 
	{{1, 1, 2, 1, 1, 1, 1, 2, 1, 1},
		{1, 1, 2, 1, 1, 1, 1, 2, 1, 1},
		{1, 1, 2, 1, 1, 1, 1, 2, 1, 1},
		{1, 1, 2, 1, 1, 1, 1, 2, 1, 1}},
		
	{{1, 2, 1, 1, 2, 2, 2, 1, 1, 1},
		{1, 1, 1, 2, 2, 2, 1, 1, 2, 1},
		{1, 2, 1, 1, 2, 2, 2, 1, 1, 1},
		{1, 1, 1, 2, 2, 2, 1, 1, 2, 1}},
	
	{{3, 3, 2, 3, 1, 1, 3, 2, 3, 3},
		{3, 2, 3, 3, 1, 1, 3, 3, 2, 3},
		{3, 3, 2, 3, 3, 3, 3, 2, 3, 3},
		{3, 2, 3, 3, 3, 3, 3, 3, 2, 3}},
	
	{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 4, 0, 0, 0, 0, 0}},
}
-->8
--artificial intelligence--

--a function that manages the--
--enemies behaviour.--
function enemy_behaviour(enemy)

	if enemy.delay > 0 then
		enemy.delay -= 1
		return
	end
	
	--in this state the enemy flies--
	--into its target position on--
	--screen.--
	if enemy.state == "fly" then
	
		enemy.y_position = cubic_out_easing(enemies_fly_in_current_frame, enemy.y_start_position, 48, enemies_fly_in_duration)
		
		if enemy.y_target_position - enemy.y_position < 0.2 then
			enemy.state = "defend"
			enemy.x_position = enemy.x_target_position
			enemy.y_position = enemy.y_target_position
		end
	
	--currently, in this state the enemy--
	--is on standby. (might change)--				
	elseif enemy.state == "defend" then
	
	--in this state the enemy performs--
	--its attack.--	
	elseif enemy.state == "attack" then
  
  --enemy type 1 attack pattern.--
  if enemy.enemy_type == 1 and frames_counter % (40 + flr(10 * (0.5 + enemy.projectiles_frequency))) == 0 then
   shoot_projectile_enemy(enemy, 1, 1.25)
  --enemy type 2 attack pattern.-- 
		elseif enemy.enemy_type == 2 then
			enemy.x_speed = sin(frames_counter / 20)
			enemy.y_speed = 2.5
		--enemy type 3 attack pattern.--	
		elseif enemy.enemy_type == 3 then	
			if not enemy.is_x_speed_set then
			
				if enemy.y_position >= player.y_position then
					
					if enemy.x_position < player.x_position then
						enemy.x_speed = 2
					else
						enemy.x_speed = -2
					end
					enemy.y_speed = 0
					enemy.is_x_speed_set = true
					
				else
					enemy.y_speed = 1.25
				end
			
			end
		--enemy type 4 attack pattern.--	
		elseif enemy.enemy_type == 4 and frames_counter % 30 == 0 then	
			shoot_spreading_projectiles_enemy(enemy, 9, 1, 0)
			enemy.y_speed = 0.2
		end
		
		--adujsts enemy's of type 2 x--
		--axis speed so it won't go--
		--beyond the screen edges.--
		if enemy.enemy_type == 2 and enemy.x_position < 10 then
			enemy.x_speed += 1 - (enemy.x_position / 10)
		elseif enemy.enemy_type == 2 and enemy.x_position > 110 then
			enemy.x_speed -= (enemy.x_position - 110) / 10
		end	
		
		move_object(enemy)
		
		--deletes enemies that have--
		--crossed the screen's edges.--
		if enemy.y_position >= screen_edges.lower or 
				 enemy.x_position <= screen_edges.left or 
		   enemy.x_position >= screen_edges.right then 
		   	del(enemies, enemy)
		end
	
	end
	
end
__gfx__
00000000000cc000000cc000000cc000000cc00000000000000000000000000000088000000000000000000000000000a000000a400000040000000000000000
0000000000cccc00000ccc0000cccc0000cccc0000000000000a00000800a080088888800000000000000000000000000a0000a0040000400000000000000000
0070070000cccc00000ccc0000cccc0000cccc000000000000f11f00008888000888888000000000000000000000000000a00a00004004000000000000000000
000770000ccaacc0000ccaa00cccccc00ccaacc000000000001ff1000188881008877880000000000000000000000000000aa000000440000000000000000000
000770000ca77ac0000ca7700cccccc00ca77ac000000000001ff1000188881008887880000000000000000000000000000aa000000440000000000000000000
007007000ccaacc0000ccaa00cccccc00ccaacc00000000000f11f00008888000888888000000000000000000000000000a00a00004004000000000000000000
0000000000cccc00000ccc0000cccc0000cccc00000000000000000008000080088888800000000000000000000000000a0000a0040000400000000000000000
000000000000000000000000000000000000000000000000000000000000000000088000000000000000000000000000a000000a400000040000000000000000
00000000000000000000000000000000090000000000009001020000000000000000000000000000000000000000000000500500005000000000050000500500
000000a000000000000000a00000000099c11c0000c11c9901aaae00000001110000000000000000000000000000000005500550055000000000055005500550
000000ac00000000000000ac000000000deaadd00ddaae8001aaaa8000000aa00000000000800000000000000000000005500550055000000000055005500550
000000aca0000000000000ac00000000080dd0d00d0dd0d00002200000002aa2000022000ea00000000000000000000022222222bbbbbbbb22222222bbbbbbbb
000000aca0000000000000ac000000000d0000d00d0000800000000000002aa0008aaaa10aa20000000000000000000022822822bbabbabb22822822bbabbabb
00002999990000000000299999000000080000d00d0000d00000000000000ae0000eaaa12aa200000000000000000000022222220bbbbbbb022222220bbbbbbb
0000298989200099000029898920000000000000000000000000000000000800000002010aa000000000000000000000022772200b7bbbb0022227200b7777b0
000098a9a8299990000098a9a8200000000000000000000000000000000000000000000011100000000000000000000000022000000bb00000022000000bb000
099999999999000000009999999900000000000000000000000000000000000000000000000000000000000000000000000000000d0000dddd00000000000000
9909990009990000000099000999009900000000000000000000000000000000000000000000000aaaa000000000000eeee00000ddddddddddddddd000000000
00099908092999900009990809299990000000000000000000000000000000000000000000000aaddddaa00000000ee0000ee000d11111d11111dddd00000000
0999299999200090000929989920000000000000000000000000000000000000000000000000addd66ddda000000e00000000e00d118811188811dd000000000
0900299229900000999929982999990000000000000000000000000000000000000000000000addd66ddda000000e00000000e00dd18888888881ddd00000000
000000000000000000009000000009000000000000000000000000000000000000000000000adddddddddda0000e0000000000e0dd188899999811d000000000
000000000000000000099000000000000000000000000000000000000000000000000000000adddd66dddda0000e0000000000e0dd18899aaa8881d000000000
000000000000000000090000000000000000000000000000000000000000000000000000000addddddd66da0000e0002222000e0dd1889777a8881dd00000000
0005500000055000000550000000000009b99b9000bbbb00000bb0000000000000000000000addddddd66da0000e0022222000e0d1188977aa88811d00000000
005aa500005aa500005aa50000eeee00009bb90000bbbb00000bb0000000000000000000000addddd6dddda0000e0022222000e0d1889977a99811d000000000
005aa500805aa508005aa500099999900000000000099000000bb0000000000000000000000addddd6dddda0000e0022222000e0d1888aa999881ddd00000000
05aaaa8055aaaa5508aaaa509eeeeee90000000000099000000bb00000000000000000000000adddddddda000000e00220000e00d188899888881ddd00000000
05ccaaa05aaccaa50aaacca09eeeeee90000000000000000000bb00000000000000000000000adddddddda000000e00000000e00d188888888881dd000000000
5caacaa08acaaca80aacaac5099999900000000000000000000bb000000000000000000000000aaddddaa00000000ee0000ee000d111188111111dd000000000
5cccca5005cccc5005acccc500eeee0000000000000000000000000000000000000000000000000aaaa000000000000eeee000000ddd1111dddddd0000000000
0057750000577500005775000000000000000000000000000000000000000000000000000000000000000000000000000000000000dddddd0000000000000000
000000000000000000000000999000000d0000dddd0000000ddd00dddd0000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000009999990000ddddddddddddddd0ddddddddddddddd0000000d000000000000000000000000000000000000000000000000000000000
00000000000000000000999999999900d11111d11111dddddddddddddddddddd00000dd000000000000000000000000000000000000000000000000000000000
00000aaaaaa000000099999aaa999900d118811188811dd0dd222ddd222dd22d000ddd00dd000000000000000000000000000000000000000000000000000000
0000aaa77aaa0000009999aaaaaa9990dd18888888881dddddddddddd2dddd2d00ddd00ddd0d0000000000000000000000000000000000000000000000000000
000aa777777aaaaa09999aaa777aa999dd188899999811d0dddddddddddddddd00dd00dddd0d0000000000000000000000000000000000000000000000000000
000a77777777777a0999aa777777a999dd18899aaa8881d0dddddddddddddddd0dd00dddd00d0000000000000000000000000000000000000000000000000000
00aa77777777777a099aa7777777a999dd1889777a8881ddddd22ddddddddddd0000dddd00ddd000000000000000000000000000000000000000000000000000
00a777777777777a099aa7777777a999d1188977aa88811dddd22ddddd22dddd000ddd0000dd0000000000000000000000000000000000000000000000000000
00a777777777777a009aa7777777a999d1889977a99811d0dddd2ddddd2dddd0000d000000000d00000000000000000000000000000000000000000000000000
00a77777777777aa009aa7777777a999d1888aa999881ddddddd2ddddd2ddddd00000000000d0000000000000000000000000000000000000000000000000000
00a7777777777aa00099aaaaaa77a990d188899888881ddddddd2ddddd2ddddd000000000dddd000000000000000000000000000000000000000000000000000
00aa777777777a00009999999aaaa900d188888888881dd0dddd222ddddd2dd000dd000000dd0000000000000000000000000000000000000000000000000000
000aaa77777aaa0000099999999aa900d111188111111dd0ddddddddddd22dd00000000000000d00000000000000000000000000000000000000000000000000
00000aaaaaaa000000000999999999900ddd1111dddddd000ddddddddddddd000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000099999999000dddddd0000000000dddddd00dd00000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00060000260301a0301903019030280302703025030220301e0301b0301803017030170301703017030170301703016030170301703018030180301803018030180301a0301c0301e03020030220302303024030
000200002545025450244502345024450254502445022450204500245001450014500045000450004500045001450024502145022450224502345023450234502245022450214502045021450214502245000000
00010000151501515016150171501815019150191501a1501c1501e1502015023150271502a1502d1502f1502d1502d1002e1002d1002d1002d1002d100000000000000000000000000000000000000000000000
001000000d6200a6200762001600096000060000600006000060000600126000f6000060000600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000200000c6400d6400f6401064011640126401364013640146401464015640166400430007500065001d6001c60000600046000f600025000250000000000000000000000000000000000000000000000000000
000500001475014750147501575015750157501675016750167501675000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0003000002050050500705000050000500c0500f05012050150500030000300013000130000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0002000010650106500f65012650136501465019650196501c6501c6501b650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0010000011750107501075011750127500f7500b75000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000d0000143401334012340123400130013330133301333013330000001b3301f33026330293402a3402934027340203400000020340213402134007300013001f3401f3401934017340153401c3000030000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011011200c0433f2151b3133f215243151b3133f2150c0430c0433f2151b4131b41324315243153f2150c0430c0431b4133f2151b4133f215243150c0433f2150c0431b3133f2151b31324315243150c0433f215
011000000c0430c0000c000000000c043000000c000000000c0430c0000c000000000c043000000c000000000c0430c0000c000000000c043000000c000000000c0430c0000c000000000c043000000c00000000
01100000021000210002540025200e01102540025200e01102540025200e01102540025200e011025400e01102540025200e01102540025200e01102540025200e01102540025200e011025400e011025400e011
010300000974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743
011000201f0401f0401f0241f0201b0401b0401b0241b02016040160401602416020140401404014024140201f0401f0401f0241f0201b0401b0401b0241b0201604016040160241602014040140401402414020
01100000145101f5101f5101f5101b5101b5101b5101b51016510165101651016510145101451014510145101f5101f5101f5101f5101b5101b5101b5101b510165101651016510165101451014510145101f510
011000001f0401f0401f5241f5201b0401b0401b5241b52016040160401652416520140401404014524145201f0401f0401f5241f5201b0401b0401b5241b5201604016040165241652014040140401452414520
01100000185501855018540185401853218522235501f5501e5501e5501e5401e5301e5221e5121c5501c5501c5501c5501c5501c5401c5401c5301c5301c5301c5301c5221c5221c5121c5121c5122655026540
__music__
03 0a424344
00 41424344
00 0f104344
00 12134344

