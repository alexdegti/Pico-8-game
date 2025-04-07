pico-8 cartridge // http://www.pico-8.com
version 35
__lua__
--main tab--

poke(0x5600,unpack(split"9,8,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,63,63,63,63,63,63,0,0,0,63,63,63,0,0,0,0,0,63,51,63,0,0,0,0,0,51,12,51,0,0,0,0,0,51,0,51,0,0,0,0,0,51,51,51,0,0,0,0,48,60,63,60,48,0,0,0,3,15,63,15,3,0,0,62,6,6,6,6,0,0,0,0,0,48,48,48,48,62,0,99,54,28,62,8,62,8,0,0,0,0,24,0,0,0,0,0,0,0,0,0,12,24,0,0,0,0,0,0,12,12,0,0,0,10,10,0,0,0,0,0,4,10,4,0,0,0,0,0,0,0,0,0,0,0,0,12,12,12,12,12,0,12,0,0,54,54,0,0,0,0,0,0,54,127,54,54,127,54,0,8,62,11,62,104,62,8,0,0,51,24,12,6,51,0,0,14,27,27,110,59,59,110,0,12,12,0,0,0,0,0,0,24,12,6,6,6,12,24,0,12,24,48,48,48,24,12,0,0,54,28,127,28,54,0,0,0,12,12,63,12,12,0,0,0,0,0,0,0,12,12,6,0,0,0,62,0,0,0,0,0,0,0,0,0,12,12,0,32,48,24,12,6,3,1,0,62,99,115,107,103,99,62,0,24,28,24,24,24,24,60,0,63,96,96,62,3,3,127,0,63,96,96,60,96,96,63,0,51,51,51,126,48,48,48,0,127,3,3,63,96,96,63,0,62,3,3,63,99,99,62,0,127,96,48,24,12,12,12,0,62,99,99,62,99,99,62,0,62,99,99,126,96,96,62,0,0,0,12,0,0,12,0,0,0,0,12,0,0,12,6,0,48,24,12,6,12,24,48,0,0,0,30,0,30,0,0,0,6,12,24,48,24,12,6,0,30,51,48,24,12,0,12,0,0,30,51,59,59,3,30,0,0,96,127,211,211,147,159,0,1,3,31,17,17,17,31,0,0,0,31,1,1,1,31,0,64,96,124,68,68,68,124,0,0,31,17,31,31,1,31,0,120,4,4,62,4,4,4,0,0,0,62,34,34,62,32,62,0,2,62,34,34,34,34,0,0,24,0,24,24,24,24,0,16,0,16,16,16,16,16,30,0,0,34,18,14,18,34,0,0,16,16,16,16,16,16,0,0,0,0,20,62,42,34,0,0,0,0,62,34,34,34,0,0,0,62,34,42,34,62,0,0,0,62,34,34,62,2,2,0,0,62,34,34,62,160,96,0,0,62,2,2,2,2,0,0,0,62,2,62,32,62,0,0,8,60,8,8,8,56,0,0,0,34,98,162,54,28,0,0,0,34,34,34,34,20,8,0,0,34,34,42,62,20,0,0,0,34,20,8,20,34,0,0,0,34,34,34,62,32,62,0,0,62,32,28,2,62,0,62,6,6,6,6,6,62,0,1,3,6,12,24,48,32,0,62,48,48,48,48,48,62,0,12,30,18,0,0,0,0,0,0,0,0,0,0,0,30,0,12,24,0,0,0,0,0,0,0,62,34,34,62,34,34,0,0,62,34,62,62,34,62,0,0,62,2,2,2,2,62,0,0,30,50,34,34,50,30,0,0,62,2,30,2,2,62,0,0,62,2,2,30,2,2,0,0,62,2,50,34,34,62,0,0,34,34,62,34,34,34,0,0,62,8,8,8,8,62,0,0,62,8,8,8,8,14,0,0,34,18,14,18,34,66,0,0,2,2,2,2,2,62,0,0,34,54,42,34,34,34,0,0,34,38,42,42,50,34,0,0,62,34,42,42,34,62,0,0,62,34,62,2,2,2,0,0,62,34,34,34,34,126,0,0,62,34,62,26,50,98,0,0,62,2,62,32,32,62,0,0,62,8,8,8,8,8,0,0,34,34,34,34,34,92,0,0,119,34,34,34,34,28,0,0,119,34,34,42,54,34,0,0,195,36,24,24,36,195,0,0,34,34,62,32,32,62,0,0,126,64,120,6,2,126,0,56,12,12,7,12,12,56,0,8,8,8,0,8,8,8,0,14,24,24,112,24,24,14,0,0,0,110,59,0,0,0,0,0,0,0,0,0,0,0,0,127,127,127,127,127,127,127,0,85,42,85,42,85,42,85,0,65,99,127,93,93,119,62,0,62,99,99,119,62,65,62,0,17,68,17,68,17,68,17,0,4,12,124,62,31,24,16,0,28,38,95,95,127,62,28,0,34,119,127,127,62,28,8,0,42,28,54,119,54,28,42,0,28,28,62,93,28,20,20,0,8,28,62,127,62,42,58,0,62,103,99,103,62,65,62,0,62,127,93,93,127,99,62,0,24,120,8,8,8,15,7,0,62,99,107,99,62,65,62,0,8,20,42,93,42,20,8,0,0,0,0,85,0,0,0,0,62,115,99,115,62,65,62,0,8,28,127,28,54,34,0,0,127,34,20,8,20,34,127,0,62,119,99,99,62,65,62,0,0,10,4,0,80,32,0,0,17,42,68,0,17,42,68,0,62,107,119,107,62,65,62,0,127,0,127,0,127,0,127,0,85,85,85,85,85,85,85,0"))

--the initialisation function that's--
--called once at the beginning of the--
--program.--  
function _init()
	
	--reads high score from storage.--
	cartdata("renshu_storage")
	high_score = dget(0)
	
	--plays title screen music.--	
	music(0)
	
	reset_game()
	
end

--the update function that is called--
--thirty times per second.--
function _update()
	
	--updates the frames counter.--
	frames_counter += 1
	
	--calls the adequate update function--
	--in accordance with the global game_state--
	--variable.--
	if game_state == "game start" then
		update_game_start()
	elseif game_state == "game run" then
		update_game_run()
	elseif game_state == "present level" then
		update_present_level()
	elseif game_state == "game win" then
		update_game_win()
	elseif game_state == "game over" then
		update_game_over()
	--this next branch should not be--
	--reached.--
	else
		stop("error. game crashed (update call).", 15, 63, 8)
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
	--in accordance with the global game_state--
	--variable.--
	if game_state == "game start" then
		draw_game_start()
	elseif game_state == "game run" then
		draw_game_run()
	elseif game_state == "present level" then
		draw_present_level()
	elseif game_state == "game win" then
		draw_game_win()
	elseif game_state == "game over" then
		draw_game_over()
	--this next branch should not be--
	--reached.--
	else
		stop("error. game crashed (draw call).", 0, 63, 8)
	end
		
end

--resets the game to initial state.--
function reset_game()

	--general initialisation--
 screen_colour = 0
 ui_colour = 10
 current_score = 0
 firing_effect = 5
 invulnerability_timer = 0
 projectiles_timer = 0
 frames_counter = 0
 keys_lock = 0
 current_level = 1
 level_timer = 60
 final_level = 9
	game_state = "game start"
	enemies_fly_in_current_frame = 0
 enemies_fly_in_duration = 30
 front_row = 4
 shake_magnitude = 0
 active_pickup = nil
 spawn_mine_flag = false
 space_mines_fly_in_current_frame = 0
 space_mines_fly_in_duration = 120
 number_of_explosions = 2
 game_win_delay = 60
 player_action_lock = false
 current_frame_title = 1 
	
 --player--
 player = {
 	current_sprite = 49,
 	sprite_width = misc.eight_pixels,
 	sprite_height = misc.eight_pixels,
 	default_sprite = 49,
  left_turn_sprite = 48,
  right_turn_sprite = 50,
  exhaust_sprite = 52,
  current_energy = 30,
  x_position = 63,
  y_position = 105,
  x_speed = 0,
  y_speed = 0,
  shake_timer = 0,
  is_shield_on = false,
  did_restore_energy = false
 }
 
 --projectiles--
 projectiles = {}
 
 --enemy_projectiles--
 enemy_projectiles = {}
	
	--starfield--
	number_of_stars = 100
	stars = {}
	stars_colours = {first_colour = 5, second_colour = 1, third_colour = 7}
	
	moon_sprite = 51
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
	
	--space mines--
	space_mines = {}
	
	--enemies--
	enemies = {}
	
	--particles--
	particles = {}
	
	--pickups--
	pickups = {}
	
	--floating texts--
	floating_texts = {}
		
	--title screen character--
	title_screen_character = {
		sprites = {5, 22, 26, 49},
		sprites_index = flr(rnd(4)) + 1,
		x_position = 20,
		y_position = flr(rnd(87)) + 10,
		speed = 1
	}
	
end
-->8
--a tab for update functions--

--an update function for "game start" mode.--
function update_game_start()
	
	--checks for a button press to--
	--clear the opening screen.--
	if btnp() != 0 then
		game_state = "present level"
		music(-1)
	end
	
	--manages the movement of the--
	--character in the title screen.--
	current_frame_title += 1
	
	if current_frame_title < 180 then
		title_screen_character.x_position += cubic_out_easing(current_frame_title, 0, 10, 180)
	else	
		title_screen_character.x_position = 20
		title_screen_character.y_position = flr(rnd(87)) + 10
		title_screen_character.sprites_index = flr(rnd(4)) + 1
		current_frame_title = 0
	end	
	
end

--an update function for "game run" state.--
function update_game_run()
		
	--resets values.--
	player.current_sprite = player.default_sprite
	
	if (player.exhaust_sprite > 54) player.exhaust_sprite = 52
	 
 for i = 1, number_of_stars do
 	if (stars[i].y_position > screen_edges.lower) stars[i].y_position = 0 
 end
 
 if moon_y_position > screen_edges.lower then
 	moon_y_position = 5
 	moon_x_position = ceil(rnd(119))
 end
	 
 enemies_fly_in_current_frame += 1
 
	 
 --manages the boss' explosion.--
 if number_of_explosions == 0 then
 	del(enemies, enemies[1])
 elseif #enemies != 0 and 
        enemies[1].enemy_type == 6 and
	       enemies[1].health_points <= 0 and
	       #particles == 0 then
		number_of_explosions -= 1
		explode_boss(enemies[1])
	end
 
 
 --checks for an active pickup.--
 if active_pickup != nil then
 	active_pickup.duration -= 1
 	if active_pickup.duration < 0 then 
			if (active_pickup.pickup_type == "shield") player.is_shield_on = false
			active_pickup = nil	
 	end 
 end
 
 
 --starfield--
 for star in all(stars) do
 	move_object(star)
 end
 moon_y_position += moon_speed

 
 --spawns space mines.--
 if frames_counter % 200 == 0 and
    current_level != final_level then
 	if current_level % 2 == 0 then
 		local x_position = 63 + (random_sign() * flr(rnd(40)))
 		spawn_space_mine(x_position, -10)
 		spawn_space_mine(x_position + (random_sign() * (16 + flr(rnd(16)))), -10 - (20 + flr(rnd(20))))
 	else
 		spawn_space_mine(63 + (random_sign() * flr(rnd(55))), -10)
 	end
 else
 	for space_mine in all(space_mines) do
 		if (space_mine.movement_direction == nil) move_object(space_mine)
 	end
 	for space_mine in all(space_mines) do
			if ((space_mine.y_position > 128) and (space_mine.movement_direction == nil)) del(space_mines, space_mine)
 	end
 end  
	  
	  
	--player movement input--
	if btn(keys.left) then
		if active_pickup != nil and	
		   active_pickup.pickup_type == "double speed movement" then
			player.x_speed = -2
		else
	 	player.x_speed = -1
	 end
	 player.current_sprite = player.left_turn_sprite
	end
	
	if btn(keys.right) then
		if active_pickup != nil and	
		   active_pickup.pickup_type == "double speed movement" then
			player.x_speed = 2
		else
	 	player.x_speed = 1
	 end
	 player.current_sprite = player.right_turn_sprite
	end
	
	if btn(keys.up) and
	   player_action_lock == false  then
		if active_pickup != nil and	
		   active_pickup.pickup_type == "double speed movement" then
			player.y_speed = -2
		else
			player.y_speed = -1
		end
	end
	
	if btn(keys.down) and 
	   player_action_lock == false  then
		if active_pickup != nil and	
		   active_pickup.pickup_type == "double speed movement" then
			player.y_speed = 2
		else
			player.y_speed = 1
		end
	end
	
	
	--updates player position.--
	move_object(player)
	player.x_speed = 0
	player.y_speed = 0
	
	
	--updates pickups position.--
	for pickup in all(pickups) do
		move_object(pickup)
		if (is_beyond_screen_edges(pickup.x_position, pickup.y_position)) del(pickups, pickup)
	end
	
	
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
	
	
	--checks whether more enemies should--
	--be set for attacking the player.--
	if current_level != final_level and 
	   is_front_row_mostly_cleared() then
		set_remaining_enemies_to_attack()
		front_row -= 1						
 end
 
	
	--updates enemy projectiles position.--
	for enemy_projectile in all(enemy_projectiles) do
		move_object(enemy_projectile)
		if (is_beyond_screen_edges(enemy_projectile.x_position, enemy_projectile.y_position)) del(enemy_projectiles, enemy_projectile)
	end
	
	
	--checks for collision between projectiles--
	--and enemies.--
	for projectile in all(projectiles) do
  
  --iterates over the enemies.--	
		for enemy in all(enemies) do
		
			if (not enemy.ghost_mode) and 
			   are_colliding(projectile, enemy) then
			
    --deletes the colliding projectile--
    --reduces the enemy's health points--
    --and sets the enemy for flashing.--
				del(projectiles, projectile)
				enemy.health_points -= 1
				if (enemy.health_points > 0) sfx(9)
				enemy.flash_timer = 3
				
				--sets data members if the enemy--
				--is the final boss.--
				if enemy.enemy_type == 6 then
					enemy.current_sprite = 133
					enemy.damage_sprite_timer = 30
				end

				--checks whether the enemy is defeated.--
				if enemy.health_points <= 0 then	
					
					--checks whether the enemy is the--
					--final boss.--
					if enemy.enemy_type == 6 then
					
						--sets the dying boss' speed to zero--
						--on both axes.--
						enemy.x_speed = 0
						enemy.y_speed = 0
						--sets ghost mode for the boss--
						--to true.--
						enemy.state = "dying"
						enemy.ghost_mode = true
						--makes the boss go boom.--
						sfx(11)
						explode_boss(enemy)
						--disables some of the player's--
						--actions.--
						player_action_lock = true
							
					else
						--explodes "normal" enemies.--
						explode_object(enemy, enemies, 50, 13, 8, 30)
					end
					
					--increases the player's score.--
					if enemy.state == "attack" then
					 current_score += (enemy.score * 1.5)
					else
						current_score += enemy.score
					end
					
					--pops a floating text with the score gained,--
					--and drops a pickup with a probability of--
					--0.1.--
					if enemy.state == "attack" then
						pop_floating_text(tostr(enemy.score * 15) .. "0", enemy.x_position, enemy.y_position + 5, 10)
					else
						pop_floating_text(tostr(enemy.score) .. "00", enemy.x_position, enemy.y_position + 5, 10)
					end 
					if (enemy.enemy_type != 5 and enemy.enemy_type != 6 and rnd() > 0.9) drop_pickup(enemy.x_position, enemy.y_position)
					
					--if the enemy is "normal", deletes it.--
					if enemy.enemy_type != 6 then
						del(enemies, enemy)
					end
					
					--sets another enemy to an offensive--
					--state with a probability of 0.5.--
					if (rnd() > 0.5) set_attacking_enemy()
					
				end	
			end
		end
	end
	
	
	--checks for picked up pickups.--
	for pickup in all(pickups) do
		if are_colliding(player, pickup) then
			sfx(12)
			player.is_shield_on = (pickup.pickup_type == "shield")
			active_pickup = del(pickups, pickup)
		end
	end
	
	
	--checks for collision between--
	--player and enemies.--
	--if invulnerability mode is off--
	--checks for collision with enemies.--
	if invulnerability_timer <= 0 then
		for enemy in all(enemies) do
			if are_colliding(player, enemy) then
			 if not player.is_shield_on then
			 	--reduces the player's energy.--		
					player.current_energy -= 10
					--sets an upcoming screenshake.--
					shake_magnitude = 6
					--turns on invulnerability for the player.--
					invulnerability_timer = 45
					--plays a crash sound effect.--
					explode_object(enemy, enemies, 50, 13, 8, 30)
				else
					del(enemies, enemy)
				end	
			end
		end
	else
		--reduces the duration of the--
		--invulnerability mode.--
		for enemy in all(enemies) do
			if (are_colliding(player, enemy)) del(enemies, enemy)
		end
		invulnerability_timer -= 1	
	end
	
	
	--checks for collision between player--
	--and enemy projectiles.--
	--checks whether the invulnerability--
	--mode is on.--
	if invulnerability_timer <= 0 then
		for enemy_projectile in all(enemy_projectiles) do
		 --checks whether the shield powerup--
		 --is currently active.--
			if player.is_shield_on and 
			   did_hit_shield(enemy_projectile) then
				del(enemy_projectiles, enemy_projectile)
			elseif are_colliding(player, enemy_projectile) then
			 --reduces the player's energy.--		
				player.current_energy -= 10
				--shakes the screen.--
				shake_magnitude = 6
				--activates invulnerability mode--
				--for the player.--
				invulnerability_timer = 30
				explode_object(enemy_projectile, enemy_projectiles, 40, 13, 8, 5)
			end
		end	
	end
	
	
	--checks for collision between the--
	--player and space mines.--
	--checks whether the invulnerability--
	--mode is on.--
	if invulnerability_timer <= 0 then
		for space_mine in all(space_mines) do
			if are_colliding(player, space_mine) then
				--explodes the space mine.--
			 explode_object(space_mine, space_mines, 40, 13, 8, 5)
			 --reduces the player's energy.--
				player.current_energy -= 10
				--shakes the screen.--
				shake_magnitude = 6
				--sets the invulnerability mode--
				--for the player.--
				invulnerability_timer = 30
			end	
		end
	end
	
		
	--checks whether the player lost--
	--all energy, hence it's game over.--
	if player.current_energy < 0 then
		if current_score > high_score  then
			dset(0, current_score)
		end
		game_state = "game over"
		music(7)
		keys_lock = frames_counter + misc.keys_lock_delay
		return
	end
		
		
	--transports player position in case--
	--of "out of bounds".--
	if player.x_position < screen_edges.left  then player.x_position = 0
	elseif player.x_position > screen_edges.right - 8 then player.x_position = 119
	elseif player.y_position < screen_edges.upper then player.y_position = 0
	elseif player.y_position > screen_edges.lower - 8 then player.y_position = 119
	end
	
	
	--shooting input--	
	if btn(5) and 
				projectiles_timer <= 0 and
				player_action_lock == false  then
			
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
		
		--checks for an active pickup--
		--that doubles the speed.--
		if (active_pickup != nil and active_pickup.pickup_type == "double speed projectiles") projectile.y_speed = -6.4 
				
		add(projectiles, projectile)
		firing_effect = 5
		sfx(2)
		projectiles_timer = 10
		
	end 
	
	
	--checks whether all the enemies in--
	--the current level have been wiped out, and--
	--therefore a new level should be summoned.--
	if #enemies == 0 then
		enemies_fly_in_current_frame = 0
		front_row = 4
		clear_leftover_projectiles()	
		start_next_level()
	elseif frames_counter % 30 == 0 then 
		set_attacking_enemy()
	end
	
	
	--updates floating texts.--
	for floating_text in all(floating_texts) do
		floating_text.y_position -= 0.6
		floating_text.age += 1
		if (floating_text.age >= misc.second * 0.7) del(floating_texts, floating_text)
	end
	
			
	--updates values.--
	projectiles_timer -= 1
	firing_effect -= 1

end

--an update function for "present level" state.--
function update_present_level()
	
	--if all the enemies are cleared--
	--spawns enemies for the following--
	--level.--
	if #enemies == 0 then
		for row = 1, 4 do
			for column = 1, 10 do
				spawn_enemy((column * 12) - 5, row * 10 - 5, levels[current_level][row][column], column * 2, row)
			end
		end
	end
	
	if (level_timer <= 0) game_state = "game run"
	
	level_timer -= 1
	
end

--an update function for "game win" state.--
function update_game_win()

	game_win_delay -= 1
	
	--checks for keys lock.--
	if (frames_counter < keys_lock) return
	
	--resets tne game upon a button--
	--press.--
	if btnp() != 0 then
		music(-1)
		reset_game()
		game_state = "present level"
	end
	
end

--an update function for "game over" state.--
function update_game_over()
	
	--checks for keys lock.--
	if (frames_counter < keys_lock) return
	
	--resets the game upon a button--
	--press.--
	if btnp() != 0 then
		reset_game()
		game_state = "present level"
	end

end
-->8
--a tab for draw functions--

--a draw function for "game start" state.--
function draw_game_start()
	
	cls(1)
	--centred_print("welcome to the game!!", 63, 63, 0)
	--centred_print("press any button to start", 63, 75, blinking_text())
	oprint("\014synthdoonatsu",ctx("\014synthdoonatsu", 4)-1,60,0,9)
	spr(67, 59, 40, 4, 4)
	spr(71, 10, 58, 4, 4)
	spr(title_screen_character.sprites[title_screen_character.sprites_index], title_screen_character.x_position, title_screen_character.y_position, 1, 1) 
	
end

--a draw function for "game run" state.--
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
	--draws the score.--
	if current_score == 0 then
		print("score:" .. current_score, 55, 122, ui_colour)
	else	
		print("score:" .. (current_score * 10) .. "0", 55, 122, ui_colour)
	end
	--draws the energy.--	
	print("energy:", 1, 115, ui_colour)
 rect(1, 121, 30, 126, ui_colour)
 rectfill(1, 121, player.current_energy, 126, ui_colour)
 --draws the current level.--
 print("level:" .. current_level, 1, 108, ui_colour)
 --draws the active pickup if there--
 --is one.--
 if active_pickup != nil then
 	print("pickup:", 100, 110, ui_colour)
 	spr(active_pickup.current_sprite, 107, 116, 2, 2)
 end
 
 --draws space mines.--
	for space_mine in all(space_mines) do
		draw_object(space_mine)
		animate_object(space_mine)
	end
 	
	--draws the player spaceship.--
	if invulnerability_timer <= 0 then
	 draw_object(player)
		spr(player.exhaust_sprite, player.x_position, player.y_position + misc.eight_pixels)
 	--draws the shield if it is on.--
		if (player.is_shield_on) circ(player.x_position + 3, player.y_position + 4, 9, flr(rnd(16)))
	else
	 --invulnerability state.--
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
	end
	
	--draws enemies.--
	for enemy in all(enemies) do
  		
		--makes the enemies flash.--
		if enemy.flash_timer > 0 then
		 enemy.flash_timer -= 1
		 for i = 1, 15 do
		 	pal(i, 7)
		 end
		end
		
		--changes the final boss' sprite--
		--when it takes damage.--
		if enemy.enemy_type == 6 then
			if enemy.damage_sprite_timer > 0 then
				enemy.damage_sprite_timer -= 1
			else
				enemy.current_sprite = enemy.default_sprite
			end
		end
		
		draw_object(enemy)
		if enemy.enemy_type != 6 then
			animate_object(enemy)
		end
		pal()
		
	end
  	 
	--draws pickups.--
	for pickup in all(pickups) do
		
		local colour = 7
		
		if (frames_counter % 8 > 3) colour = 11
		
		for i = 1, 15 do
		 	pal(i, colour)
		end
	
		draw_object_outline(pickup)
		pal()
		draw_object(pickup)
		
	end
	
	--draws explosions.--
	explode()
	
	for floating_text in all(floating_texts) do
		print(floating_text.text, floating_text.x_position, floating_text.y_position, floating_text.colour)
	end

end

--a draw function for "present level" state.--
function draw_present_level()

	draw_game_run()
	print("level:" .. current_level, 55, 35, blinking_text())
	if (player.did_restore_energy) print("+10 energy", 50, 50, 10)
	
end

--a draw function for "game win" state.--
function draw_game_win()
	
	--draws the winning screen if--
	--the delay timer is exhausted.--
	if game_win_delay <= 0 then
		cls(0)
		print("congrats on beating the game!!!", 2, 18, blinking_text())
		print("press any button to play again", 4, 28, blinking_text())
		print("high score:" .. (high_score * 10) .. "0", 32, 38, 10)	
		print("score:" .. (current_score * 10) .. "0", 45, 48, ui_colour)
	else
		draw_game_run()
	end
		
end

--a draw function for "game over" state.--
function draw_game_over()
	
	--draws the game over screen.--
	print("game over", 46, 63, blinking_text())
	print("press any button to play again", 4, 73, blinking_text())
 print("high score:" .. (high_score * 10) .. "0", 32, 83, 10)
	
end
-->8




 
-->8
--auxiliary functions tab--

--a function that makes text blink.
do

	local text_colour_index = 1
	
 function blinking_text()
 		
		local colours = {8, 8, 14, 14, 12, 12, 12, 12, 14, 14, 8, 8}
		if (text_colour_index > #colours) text_colour_index = 1
		text_colour_index += 1
		return colours[text_colour_index]
			
 end
 
end

--a function that draws an object.--
function draw_object(object)
	
	local x_position_copy = object.x_position
	local y_position_copy = object.y_position
	
	--checks whether the object should--
	--shake.--
	if object.shake_timer > 0 then
		object.shake_timer -= 1
		if frames_counter % 4 < 2 then
			x_position_copy += 1.5	
		end
	end

	spr(object.current_sprite, x_position_copy, y_position_copy, object.sprite_width / misc.eight_pixels, object.sprite_height / misc.eight_pixels)

end

--a function that draws an object's--
--outline.--
function draw_object_outline(object)
	
	spr(object.current_sprite, object.x_position + 1, object.y_position, object.sprite_width / misc.eight_pixels, object.sprite_height / misc.eight_pixels)
	spr(object.current_sprite, object.x_position - 1, object.y_position, object.sprite_width / misc.eight_pixels, object.sprite_height / misc.eight_pixels)
	spr(object.current_sprite, object.x_position, object.y_position + 1, object.sprite_width / misc.eight_pixels, object.sprite_height / misc.eight_pixels)
	spr(object.current_sprite, object.x_position, object.y_position - 1, object.sprite_width / misc.eight_pixels, object.sprite_height / misc.eight_pixels)
			
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

--a function that generates explosions of enemies.--
function explode()
	
	for particle in all(particles) do
		
		local initial_life_span = 50 + particle.life_span_random_boost
		
		if not particle.centre_flag then
			if particle.life_span >= initial_life_span - 8 then
				particle.colour = 10
			elseif particle.life_span >= initial_life_span - 18 then
				particle.colour = 9
			elseif particle.life_span >= initial_life_span - 30 then   
				particle.colour = 8
			else
				particle.colour = 13	
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

--a function that spawns a space mine.--
function spawn_space_mine(x_position, y_position, movement_direction)
	
	--clips the x_position if required.--
	if x_position > 119 then
		x_position = 119
	elseif x_position < 0 then
		x_position = 0
	end
	
	local space_mine = {
		x_position = x_position,
		y_position = y_position,
		x_target_position = x_position,
		sprites = {9, 10},
		sprites_table_index = 1,
		current_sprite = 9,
		sprite_width = misc.eight_pixels,
		sprite_height = misc.eight_pixels,
		animation_speed = 0.2,
		shake_timer = 0,
		did_reach_target_position = false
	}
	
	--confirms the space mine's "type",--
	--and sets data members accordingly.-- 
	if movement_direction == "right" then
		space_mine.x_position -= 20
		space_mine.x_start_position = space_mine.x_position
		space_mine.movement_direction = "right"
	elseif movement_direction == "left" then
		space_mine.x_position += 20
		space_mine.x_start_position = space_mine.x_position
		space_mine.movement_direction = "left"
	else
		space_mine.x_speed = 0
		space_mine.y_speed = 0.9		
	end
	
	add(space_mines, space_mine)

end

--a function that spawns an enemy.--
function spawn_enemy(x_position, y_position, enemy_type, delay, row)
	
	--creates a basic enemy object.--
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
		damage_sprite_timer = 0,
		sprites_table_index = 1,
		delay = delay,
		shake_timer = 60,
		row = row,
		ghost_mode = false,
		projectiles_sprite = 0
	}

	--adds properties to the enemy object--
	--according to its type.--
	--an enemy that shots projectiles--
	--straight ahead.--
	if enemy_type == 1 then
	
	 enemy.sprites = {5, 6, 7, 8}
	 enemy.default_sprite = enemy.sprites[1]
		enemy.current_sprite = enemy.default_sprite
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.02 + rnd(0.02)
  enemy.projectiles_frequency = rnd()
  enemy.score = 1
  enemy.projectiles_sprite = 15
		enemy.health_points = 2
		 
 --an enemy that crashes straight ahead--
 --trying to collide with the player.-- 	
	elseif enemy_type == 2 then
	
	 enemy.sprites = {20, 21}
	 enemy.default_sprite = enemy.sprites[1]
		enemy.current_sprite = enemy.default_sprite
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.28
		enemy.score = 3
		enemy.health_points = 2
		
	--an enemy that flies sideways towards--
	--the player once it's at the same height.--	
	elseif enemy_type == 3 then
	
		enemy.sprites = {22, 23, 24, 25}
		enemy.default_sprite = enemy.sprites[1]
		enemy.current_sprite = enemy.default_sprite
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.1
		enemy.is_x_speed_set = false
		enemy.score = 4
	
	--an enemy that shoots an aimed projectile--
	--at the player.--		
	elseif enemy_type == 4 then
	
		enemy.sprites = {26, 27}
		enemy.default_sprite = enemy.sprites[1]
		enemy.current_sprite = enemy.default_sprite
		enemy.sprite_width = misc.eight_pixels
		enemy.sprite_height = misc.eight_pixels
		enemy.animation_speed = 0.05 + rnd(0.05)
		enemy.projectiles_frequency = rnd()
		enemy.score = 2
		enemy.health_points = 2
		
	--an enemy that shoots a spread of--
	--projectiles at the player.--	
	elseif enemy_type == 5 then
		
		enemy.sprites = {16, 18}
		enemy.default_sprite = enemy.sprites[1]
		enemy.current_sprite = enemy.default_sprite
		enemy.sprite_width = misc.eight_pixels * 2
		enemy.sprite_height = misc.eight_pixels * 2
		enemy.animation_speed = 0.1
		enemy.health_points = 12
		enemy.y_position -= 20
		enemy.y_start_position -= 20
		enemy.y_target_position += 20
		enemy.x_target_position -= 10
		enemy.x_position -= 10
		enemy.score = 8
		
	--the final boss the player has--
	--to face.--
	elseif enemy_type == 6 then
		
		enemy.sprites = {137}
		enemy.default_sprite = 137
		enemy.current_sprite = 137
		enemy.sprite_width = misc.eight_pixels * 4
		enemy.sprite_height = misc.eight_pixels * 4
		enemy.animation_speed = 0.1
		enemy.health_points = 44
		enemy.delay = 0
		enemy.state = "fly"
		enemy.x_speed = -2
		enemy.phase_timer = frames_counter
		enemy.second_phase_state = "move left"
		enemy.clockwise_movement = false
		enemy.number_of_laps_completed = 0
		enemy.position_reset_flag = false
		enemy.y_position -= 20
		enemy.y_start_position -= 20
		enemy.x_target_position -= 15
		enemy.x_position -= 15
		enemy.score = 50
		enemy.ghost_mode = true
	
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
--level.--
function start_next_level()
	
	music(6)
	
	clear_space_mines()
		
	current_level += 1
	
	if player.current_energy < 30 then
	 player.current_energy += 10
	 player.did_restore_energy = true
	else
		player.did_restore_energy = false 
	end
	
	--checks whether the player cleared--
	--the final level.--
	if current_level > final_level then
	 --checks whether the high score was--
	 --beaten.--
  if current_score > high_score  then
			dset(0, current_score)
		end
		music(3)	
	 game_state = "game win"
	 keys_lock = frames_counter + misc.keys_lock_delay
	else
		level_timer = 60
		game_state = "present level"
	end
	
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
--all the enemies are currently--
--in a given state.--
function are_in_state(enemies_table, state)
	
	output = true
	
	for enemy in all(enemies_table) do
	 if enemy.state != state then
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
--the majority of the front row--
--has been cleared, thus enemies--
--from an inner row should start attacking.--
function is_front_row_mostly_cleared()

 local front_row_enemies = filter(enemies, is_in_front_row)
 
 return is_in_range(#front_row_enemies, 1, 3) and 
        are_in_state(front_row_enemies, "attack")
 
end

--a function that sets the remainder--
--of the enemies to attack state.--
function set_remaining_enemies_to_attack()

	for enemy in all(enemies) do
		--confirms that the enemy is indeed in--
		--the front row, its state isn't set to--
		--"attack" yet.--
		if enemy.row == front_row and
		   enemy.state == "stand by" then
			enemy.state = "attack"
		 enemy.delay = 30
		 enemy.shake_timer = 30
		end
		
	end

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
	
	filtered_enemy = rnd(filter(filter(enemies, is_in_front_row), function (enemy) return enemy.state == "stand by" end))

	--confirms that there is a valid--
	--enemy for attacking.--
	if filtered_enemy != nil then
		filtered_enemy.state = "attack"
		filtered_enemy.delay = 30
		filtered_enemy.shake_timer = 30
	end

end

--a function that shots an enemy--
--projectile.-- 
function shoot_projectile_enemy(enemy, angle, speed)
	
	--checks whether the enemy is in--
	--ghost mode.--	
	if (enemy.ghost_mode) return
		
	local enemy_projectile = {
		sprites = {15},
		sprites_table_index = 1,
		animation_speed = 0.5,
		current_sprite = 15,
		sprite_width = misc.pixel * 4,
		sprite_height = misc.pixel * 3,
		x_position = enemy.x_position + 2,
		y_position = enemy.y_position + 2,
		x_speed = sin(angle) * speed,
		y_speed = cos(angle) * speed,
		shake_timer = 0	
	}
	
	--centres the boss' projectiles--
	--when shooting.--
	if enemy.enemy_type == 6 then
  enemy_projectile.sprites[1] = 173
  enemy_projectile.current_sprite = 173
  enemy_projectile.sprite_width = misc.pixel * 5
  enemy_projectile.sprite_height = misc.pixel * 6
		enemy_projectile.x_position += 13
	end
	
	add(enemy_projectiles, enemy_projectile)
	
end

--a function that shoots spreading--
--enemy projectiles.--
function shoot_spreading_projectiles_enemy(enemy, number_of_projectiles, speed, base_angle)
	
	--checks whether the enemy is in--
	--ghost mode.--
	if (enemy.ghost_mode) return
	
	for _ = 1, number_of_projectiles do
  if enemy.enemy_type == 6 then
  	shoot_projectile_enemy(enemy, 0.8 + rnd(0.4), speed)
  elseif enemy.enemy_type == 5 then
	 	shoot_projectile_enemy(enemy, 0.9 + rnd(0.2), speed)
	 end
	end
	
end

--a function that shoots an aimed--
--enemy projectile.--
function shoot_aimed_projectile_enemy(enemy, speed)
	
	--checks whether the enemy is in--
	--ghost mode.--
 if (enemy.ghost_mode) return
 
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

--a function that drops a pickup at--
--given position.-- 
function drop_pickup(x_position, y_position)

	local pickup = {
		x_position = x_position,
		y_position = y_position,
		x_speed = 0,
		y_speed = 1,
		shake_timer = 0,
		sprites = {},
		sprites_table_index = 1,
		animation_speed = 0.5,
		sprite_width = misc.pixel * 11,
		sprite_height = misc.pixel * 11,
		duration = 150
	}
	
	--a local variable that determines--
	--the pickup's type.--
	local pickup_type = rnd()
	
	if pickup_type <= 0.33 then
		pickup.pickup_type = "double speed projectiles"
		pickup.sprites[1] = 43
		pickup.current_sprite = 43 
	elseif pickup_type <= 0.66 then
		pickup.pickup_type = "shield"
		pickup.sprites[1] = 45
		pickup.current_sprite = 45
	else
		pickup.pickup_type = "double speed movement"
		pickup.sprites[1] = 41
		pickup.current_sprite = 41
	end	
	
	add(pickups, pickup)

end

--a function that checks for collision--
--between the shield and an emeny projectile.--
function did_hit_shield(projectile)

	return ((projectile.x_position - player.x_position) *
								(projectile.x_position - player.x_position)) +
								((projectile.y_position - player.y_position) *
								 (projectile.y_position - player.y_position)) <= 12 * 12

end

--a function that generates a--
--floating text on the screen--
--at given position.--
function pop_floating_text(text, x_position, y_position, colour)

	local floating_text = {
		text = text,
		x_position = x_position,
		y_position = y_position,
		colour = colour,
		age = 0	
	}
	
	add(floating_texts, floating_text)

end

--a function that performs centred--
--printing.--
function centred_print(text, x_position, y_position, colour)
	print(text, x_position - (#text * 2), y_position, colour)	
end

--a function that clears from the screen--
--any leftover projectiles (both player and-- 
--enemy), once a level is completed.--
function clear_leftover_projectiles() 
	
	--iterates through player projectiles.--
	for projectile in all(projectiles) do
		del(projectiles, projectile)
	end
	
	--iterates through enemy projectiles.--
	for enemy_projectile in all(enemy_projectiles) do 	
		del(enemy_projectiles, enemy_projectile)
	end
	
end

--a function that returns either--
--a +1 or a -1.--
function random_sign()

	local sign = 1
	
	if (rnd() >= 0.5) sign = -1
	
	return sign
	
end

--a function that explodes the boss--
--in a marvellous manner.--
function explode_boss(boss)

	--clears any redundant space mines.--
	for space_mine in all(space_mines) do
		del(space_mines, space_mine)
	end
	
	--clears any leftover projectiles.--
	clear_leftover_projectiles()
	
	--the central particle of the explosion.--
	local centre_particle = {
		x_position = boss.x_position + 16,
		y_position = boss.y_position + 16,
		x_speed = 0,
		y_speed = 0,
		life_span_random_boost = 0,
		life_span = 50,
		size = 13,
		colour = 7,
		centre_flag = true	
	}
					
	add(particles, centre_particle)
	
	--additional particles to add some--
	--oomph to the explosion.--				
	for i = 1, 100 do
					
		local particle = {
			x_position = boss.x_position + 16 + (rnd(20) * random_sign()),
			y_position = boss.y_position + 16 + (rnd(20) * random_sign()),
			x_speed = (rnd() - 0.5) * 3,
			y_speed = (rnd() - 0.5) * 3,
			life_span_random_boost = rnd(30),
			life_span = 50,
			size = rnd(8),
			colour = 7,
			centre_flag = false
		}
						
		add(particles, particle)
		
	end
	
	--shakes the boss.--
	boss.shake_timer = 60
	shake_magnitude = 18
	
	explode()
	
end

--a function that explodes a given--
--object.--
function explode_object(object, objects_table, life_span, centre_particle_size, added_particles_size, number_of_added_particles)
	
	--the central particle of the explosion.--
	local centre_particle = {
		x_position = object.x_position + 8,
		y_position = object.y_position + 8,
		x_speed = 0,
		y_speed = 0,
		life_span_random_boost = 0,
		life_span = life_span,
		size = centre_particle_size,
		colour = 7,
		centre_flag = true	
	}
	
	add(particles, centre_particle)
	
	--additional particles to add some--
	--oomph to the explosion.--
	for i = 1, number_of_added_particles do
					
		local particle = {
			x_position = object.x_position + 8 + (rnd(5) * random_sign()),
			y_position = object.y_position + 8 + (rnd(5) * random_sign()),
			x_speed = (rnd() - 0.5) * 3,
			y_speed = (rnd() - 0.5) * 3,
			life_span_random_boost = rnd(30),
			life_span = life_span,
			size = rnd(added_particles_size),
			colour = 7,
			centre_flag = false
		}
						
		add(particles, particle)
		
	end
	
	sfx(8)
	explode()
	
	--clears the object from the--
	--objects table.--
	del(objects_table, object)

end

--a function that returns true if--
--the given number is within the--
--given range.--
function is_in_range(number, lower_bound, upper_bound)
 return (number >= lower_bound) and (number <= upper_bound)
end

--a function that deletes all-
--of the space mines.--
function clear_space_mines()
	
	for space_mine in all(space_mines) do
		del(space_mines, space_mine)
	end
	
end

--a function for dealing with--
--custom fonts.--
function oprint(s,x,y,c1,c2)
	for i=0,2 do
	 for j=0,2 do
	  if not(i==1 and j==1) then
	   print(s,x+i,y+j,c1)
	  end
	 end
	end
	print(s,x+1,y+1,c2)
end

--a function for dealing with--
--custom fonts.--
function ctx(s,n)
	return 64-#s*n
end
-->8
--mappings tab--

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

	keys_lock_delay = 150,
	pixel = 1,
	eight_pixels = 8,
	pi = 3.1415,
	second = 30
	
}

levels = {
	
	--first level--	
	{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	 {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	 {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	 {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}},
		
	--second level--
	{{1, 2, 1, 2, 2, 2, 2, 1, 2, 1},
	 {1, 2, 1, 2, 2, 2, 2, 1, 2, 1},
	 {1, 2, 1, 2, 2, 2, 2, 1, 2, 1},
	 {1, 2, 1, 2, 2, 2, 2, 1, 2, 1}},
		
	--third level--
	{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
		{3, 3, 2, 2, 3, 3, 2, 2, 3, 3},
		{3, 3, 2, 2, 3, 3, 2, 2, 3, 3},
		{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}},
	
	--fourth level--	
	{{3, 1, 3, 1, 2, 2, 1, 3, 1, 3},
	 {3, 1, 3, 1, 2, 2, 1, 3, 1, 3},
	 {3, 1, 3, 1, 2, 2, 1, 3, 1, 3},
	 {3, 1, 3, 1, 2, 2, 1, 3, 1, 3}},
	
	--fifth level--
	{{0, 0, 5, 0, 0, 0, 0, 5, 0, 0},
	 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	
	--sixth level--
	{{3, 3, 3, 3, 3, 3, 3, 3, 3, 3},
	 {1, 2, 2, 2, 1, 1, 2, 2, 2, 1},
	 {1, 2, 2, 2, 1, 1, 2, 2, 2, 1},
	 {4, 4, 4, 4, 4, 4, 4, 4, 4, 4}},
	
	--seventh level--   
	{{2, 4, 4, 4, 2, 2, 4, 4, 4, 2},
	 {2, 4, 4, 4, 2, 2, 4, 4, 4, 2},
	 {2, 2, 2, 2, 2, 2, 2, 2, 2, 2},
	 {3, 3, 3, 3, 3, 3, 3, 3, 3, 3}},
	 
	--eighth level--
	{{3, 4, 3, 4, 4, 4, 4, 3, 4, 3},
	 {3, 4, 3, 4, 4, 4, 4, 3, 4, 3},
	 {3, 4, 3, 4, 4, 4, 4, 3, 4, 3},
	 {3, 4, 3, 4, 4, 4, 4, 3, 4, 3}},
	 
	--nineth level--
	{{0, 0, 0, 0, 0, 6, 0, 0, 0, 0},
	 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},	

}
-->8
--artificial intelligence--

--a function that manages the--
--enemies behaviour.--
function enemy_behaviour(enemy)
		
	--checks whether the enemy's delay--
	--is still active.--
	if enemy.delay > 0 then
		enemy.delay -= 1
		return
	end

	--in this state the enemy flies--
	--onto its target position on--
	--screen.--
	if enemy.state == "fly" then
		
			enemy.y_position = cubic_out_easing(enemies_fly_in_current_frame, enemy.y_start_position, 48, enemies_fly_in_duration)
		 
		 --checks whether the enemy has--
		 --reached its destination.--
			if enemy.y_target_position - enemy.y_position < 0.2 then
    if enemy.enemy_type == 5 then
					enemy.state = "attack"
				else
				 enemy.state = "stand by"
				end
				enemy.x_position = enemy.x_target_position
				enemy.y_position = enemy.y_target_position
				if enemy.enemy_type == 6 then 
					enemy.state = "first phase"
					enemy.ghost_mode = false
				end
			end
	
	--checks whether the enemy is the--
	--final boss.--		
	elseif enemy.enemy_type == 6 then
		
		--boss' first phase.--
		if enemy.state == "first phase" then
		
			--encloses the player with space--
			--mines so they can't exploit the--
			--"safety gap".--
			if not spawn_mine_flag then
				--block the player from the--
				--left side.--
			 spawn_space_mine(4, 0, "right")
			 spawn_space_mine(4, 10, "right")
			 spawn_space_mine(4, 18, "right")
			 spawn_space_mine(4, 27, "right")
			 spawn_space_mine(4, 37, "right")
			 spawn_space_mine(4, 50, "right")
			 spawn_space_mine(4, 58, "right")
			 spawn_space_mine(4, 69, "right")
			 spawn_space_mine(4, 77, "right")
			 spawn_space_mine(4, 90, "right")
			 spawn_space_mine(4, 99, "right")
			 spawn_space_mine(4, 109, "right")
			 spawn_space_mine(4, 117, "right")
			 --block the player from the--
				--right side.--
			 spawn_space_mine(118, 0, "left")
			 spawn_space_mine(118, 8, "left")
			 spawn_space_mine(118, 17, "left")
			 spawn_space_mine(118, 29, "left")
			 spawn_space_mine(118, 40, "left")
			 spawn_space_mine(118, 48, "left")
			 spawn_space_mine(118, 56, "left")
			 spawn_space_mine(118, 67, "left")
			 spawn_space_mine(118, 78, "left")
			 spawn_space_mine(118, 87, "left")
			 spawn_space_mine(118, 97, "left")
			 spawn_space_mine(118, 108, "left")
			 spawn_space_mine(118, 120, "left")
			 
			 spawn_mine_flag = true
			 space_mines_fly_in_current_frame = 0
			 
			else
				
				--moves the space mines towards--
				--their destination.--
				space_mines_fly_in_current_frame += 1
				
				--iterates over the space mines.--
				for space_mine in all(space_mines) do
				
					if not space_mine.did_reach_target_position then
					 
					 --moves the space mines.--
						if space_mine.movement_direction == "right" then
							space_mine.x_position = cubic_out_easing(space_mines_fly_in_current_frame, space_mine.x_start_position, 48, space_mines_fly_in_duration)
						else
							space_mine.x_position = cubic_out_easing(space_mines_fly_in_current_frame, space_mine.x_start_position, -48, space_mines_fly_in_duration)
						end
						
						--checks whether the target destination--
						--has been reached.--
						if abs(space_mine.x_target_position - space_mine.x_position) < 2 then
						 space_mine.did_reach_target_position = true
						 space_mine.x_position = space_mine.x_target_position
						end
						
					end
					
				end
			 
			end
			
			--checks whether the first phase's--
			--time is up.--
			if enemy.phase_timer + (16 * misc.second) >= frames_counter then
				
				--sets the enemy's horizontal speed.--			
				if enemy.x_position <= 0 then
					enemy.x_speed = 1.2
				elseif enemy.x_position > 95 then
					enemy.x_speed = -1.2
				end
				
				--moves the enemy.--
				move_object(enemy)
			
				--shoots a projectile towards the--
				--player.--
				if frames_counter % 30 > 6 and 
				   frames_counter % 4 == 0 then
				   	sfx(6)
				    shoot_projectile_enemy(enemy, 0, 3.1)
				end   
				
			else
				
				--resets boss' position before--
			 --phases transition.--
			 --checks whether the boss should be--
			 --moved to the right.--
			 if enemy.x_position < 63 then
			 	
			 	--sets the boss' horizontal speed--
			 	--and moves it.--
				 enemy.x_speed = 1.2
				 move_object(enemy)
				 
				 --checks whether the target position--
				 --has been reached, and if so sets--
				 --the boss for its next phase.--	
				 if enemy.x_position >= 63 then
				 	enemy.state = "second phase"
				 	enemy.phase_timer = frame_counter
				 end
				
				--checks whether the boss should be--
			 --moved to the left.-- 	
			 else
			  
			  --sets the boss' horizontal speed--
			 	--and moves it.--
				 enemy.x_speed = -1.2
					move_object(enemy)
				 
				 --checks whether the target position--
				 --has been reached, and if so sets--
				 --the boss for its next phase.--	
				 if enemy.x_position < 63 then
				 	enemy.state = "second phase"
				 	enemy.phase_timer = frames_counter
				 end
				 	 	
			 end	
				
			end		
		
		--boss' second phase.--	
		elseif enemy.state == "second phase" then
			
			--clears away space mines from--
			--the previous phase.--
			if spawn_mine_flag then
				
				for space_mine in all(space_mines) do
					del(space_mines, space_mine)
				end
			
			 spawn_mine_flag = false
			
			end
			
			--checks whether the boss has completed--
			--a predetermined number of laps, and thus--
			--should advance to the next phase.--
			if enemy.number_of_laps_completed < 3 then
				
				--sets the boss' speed in accordance--
				--with its current direction of movement.--
				if enemy.second_phase_state == "move right" then
					enemy.x_speed = 1.2
				elseif enemy.second_phase_state == "move left" then
					enemy.x_speed = -1.2
				elseif enemy.second_phase_state == "move up" then
					enemy.y_speed = -1.2
				else
					enemy.y_speed = 1.2
				end
				
				--moves the boss.--
				move_object(enemy)
				--resets speed.--
				enemy.x_speed = 0
				enemy.y_speed = 0
				
				--manages the boss' movement direction.--
				if enemy.clockwise_movement then
					if enemy.second_phase_state == "move right" and enemy.x_position >= 92 then
						enemy.second_phase_state = "move down"
					elseif enemy.second_phase_state == "move down" and enemy.y_position >= 95 then
						enemy.second_phase_state = "move left"
					elseif enemy.second_phase_state == "move left" and enemy.x_position <= 0 then
						enemy.second_phase_state = "move up"
					elseif enemy.second_phase_state == "move up" and enemy.y_position <= 3 then
						enemy.second_phase_state = "move right"
						enemy.number_of_laps_completed += 1
					end
				else
					if enemy.second_phase_state == "move left" and enemy.x_position <= 0 then
						enemy.second_phase_state = "move down"
					elseif enemy.second_phase_state == "move down" and enemy.y_position >= 95 then
						enemy.second_phase_state = "move right"
					elseif enemy.second_phase_state == "move right" and enemy.x_position >= 92 then
						enemy.second_phase_state = "move up"
					elseif enemy.second_phase_state == "move up" and enemy.y_position <= 3 then
						enemy.second_phase_state = "move left"
						enemy.number_of_laps_completed += 1
					end
				end
				
				--shoots an aimed projectile towards--
				--the player.--
				if frames_counter % 10 == 0 then
					sfx(6)
					shoot_aimed_projectile_enemy(enemy, 2.4)
				end
			
			else

				--resets boss' position before--
			 --phases transition.--
			 --checks whether the boss should be--
			 --moved to the right.--
			 if enemy.x_position < 63 then
			 	
			 	--sets the boss' horizontal speed--
			 	--and moves it.--
				 enemy.x_speed = 1.2
				 move_object(enemy)
				 
				 --checks whether the target position--
				 --has been reached, and if so sets--
				 --the boss for its next phase.--	
				 if enemy.x_position >= 63 then
				 	enemy.state = "third phase"
				 	enemy.phase_timer = frames_counter
				 	enemy.number_of_laps_completed = 0
				 end
				 	
			 else
			 	
			 	--sets the boss' horizontal speed--
			 	--and moves it.--
				 enemy.x_speed = -1.2
					move_object(enemy)
				 
				 --checks whether the target position--
				 --has been reached, and if so sets--
				 --the boss for its next phase.--	
				 if enemy.x_position < 63 then
				 	enemy.state = "third phase"
				 	enemy.phase_timer = frames_counter
				 	enemy.number_of_laps_completed = 0
				 end
				 
				end
				
			end
		
		--boss's third phase.--
		elseif enemy.state == "third phase" then
			
			--checks whether the third phase's--
			--time is up.--
			if enemy.phase_timer + (10 * misc.second) >= frames_counter then
				
				--sets the boss' horizontal speed--
			 --and moves it.--			
				if enemy.x_position <= 0 then
					enemy.x_speed = 1.2
				elseif enemy.x_position > 95 then
					enemy.x_speed = -1.2
				end
				move_object(enemy)
				
				--shoots a spreading projectile at--
				--the player.--  
				if frames_counter % 15 == 0 then
				 sfx(7)
				 shoot_spreading_projectiles_enemy(enemy, 9, 2, 0)
			 end
			 
			else
				
				--resets boss' position before--
			 --phases transition.--
			 --checks whether the boss should be--
			 --moved to the right.--
			 if enemy.x_position < 63 then
					
					--sets the boss' horizontal speed--
			 	--and moves it.--			 
				 enemy.x_speed = 1.2
				 move_object(enemy)
				 
				 --checks whether the target position--
				 --has been reached, and if so sets--
				 --the boss for its next phase.--	
				 if enemy.x_position >= 63 then
				 	enemy.state = "first phase"
				 	enemy.phase_timer = frames_counter
				 end
				 	
			 else
			 	
			 	--sets the boss' horizontal speed--
			 	--and moves it.--
				 enemy.x_speed = -1.2
					move_object(enemy)
				 
				 --checks whether the target position--
				 --has been reached, and if so sets--
				 --the boss for its next phase.--	
				 if enemy.x_position < 63 then
				 	enemy.state = "first phase"
				 	enemy.phase_timer = frames_counter
				 end
				 
				end
			
			end
 
  end		
			
	--currently, in this state the enemy--
	--is on standby.--				
	elseif enemy.state == "stand by" then
	
	--in this state "normal" enemies perform--
	--their attack.--	
	elseif enemy.state == "attack" then
  
  --first enemy type attack pattern.--
  if enemy.enemy_type == 1 and 
     frames_counter % (40 + flr(30 * (0.5 + enemy.projectiles_frequency))) == 0 then
   sfx(3)  
   shoot_projectile_enemy(enemy, 1, 1.2 + rnd(0.9))

  --second enemy type attack pattern.-- 
		elseif enemy.enemy_type == 2 then
			enemy.x_speed = sin(frames_counter / 20)
			enemy.y_speed = 2.5
			
		--third enemy type attack pattern.--	
		elseif enemy.enemy_type == 3 then
			--checks that the enemy is above--
			--the player, and that the enemy's--
			--horizontal speed isn't set.--
			if (not enemy.is_x_speed_set) and
			   abs(enemy.y_position - player.y_position) <= 1 then
					--sets the enemy's horizontal speed--
					--towards the player.--
					if enemy.x_position < player.x_position then
						enemy.x_speed = 2
					else
						enemy.x_speed = -2
					end
					--resets the enemy's vertical speed.--
					enemy.y_speed = 0
					enemy.is_x_speed_set = true
			elseif (not enemy.is_x_speed_set) then
				enemy.y_speed = 1.25
			end
			
		--fourth enemy type attack pattern.--	
		elseif enemy.enemy_type == 4 and
									frames_counter % (20 + flr(30 * (0.5 + enemy.projectiles_frequency))) == 0 then
		 sfx(4)      
			shoot_aimed_projectile_enemy(enemy, 1.2 + rnd(2))
			
		--fifth enemy type attack pattern	
		elseif enemy.enemy_type == 5 and
		       frames_counter % 40 == 0 then
		 sfx(5)   
			shoot_spreading_projectiles_enemy(enemy, 9, 1.8, 0)
		end
		
		--adujsts type 2 enemy's x--
		--axis speed so it won't go--
		--beyond the screen edges.--
		if enemy.enemy_type == 2 and 
		   enemy.x_position < 10 then
			enemy.x_speed += 1 - (enemy.x_position / 10)
		elseif enemy.enemy_type == 2 and 
		       enemy.x_position > 110 then
			enemy.x_speed -= (enemy.x_position - 110) / 10
		end	
		
		--moves the enemy.--
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
f00000000000c000000cc000000cc000000cc0000050050000500000000005000050050000000000000000000000000000000000000000000000000087a80000
0000000000cccc00000ccc0000cccc0000cccc000550055005500000000005500550055005d0005509d000590000000000000000000000000000000088880000
0070070000cccc00000ccc0000cccc0000cccc000550055005500000000005500550055005555556058555860000000000000000000000000000000008800000
000770000ccaacc0000ccaa00cccccc00ccaacc022222222bbbbbbbb22222222bbbbbbbb00585850005858500000000000000000000000000000000000000000
000770000ca77ac0000ca7700cccccc00ca77ac022822822bbabbabb22822822bbabbabb00558560005585600000000000000000000000000000000000000000
007007000ccaacc0000ccaa00cccccc00ccaacc0022222220bbbbbbb022222220bbbbbbb00585860005858600000000000000000000000000000000000000000
0000000000cccc00000ccc0000cccc0000cccc00022772200b7bbbb0022227200b7777b0055dd555058dd5850000000000000000000000000000000000000000
000000000000000000000000000000000000000000022000000bb00000022000000bb00005500055095000590000000000000000000000000000000000000000
000000000000000000000000000000000900000000000090010200000000000000000000000000000eeeeee00aaaaaa000000000000000000000000000000000
000000a000000000000000a00000000099c11c0000c11c9901aaae00000001110000000000000000eddd666eaddd666a00000000000000000000000000000000
000000ac00000000000000ac000000000ddaadd00ddaadd001aaaa8000000aa00000000000800000ed6886dead6886da00000000000000000000000000000000
000000aca0000000000000ac00000000080dd0d00d0dd0800002200000002aa2000022000ea00000e6688ddea6688dda00000000000000000000000000000000
000000aca0000000000000ac000000000d0000d00d0000d00000000000002aa0008aaaa10aa200000e6666e00a6666a000000000000000000000000000000000
00002999990000000000299999000000080000d00d0000800000000000000ae0000eaaa12aa200000edd6de00add6da000000000000000000000000000000000
0000298989200099000029898920000000000000000000000000000000000800000002010aa0000000ed6e0000ad6a0000000000000000000000000000000000
000098a9a8299990000098a9a8200000000000000000000000000000000000000000000011100000000ee000000aa00000000000000000000000000000000000
09999999999900000000999999990000000000000000000000000000000000000000000000008880000000000000888000000000000088800000000000000000
99099900099900000000990009990099000000000000000000000000000000000000000000088888000000000008888800000000000888880000000000000000
000999080929999000099908092999900000000000000000000000000000000000000000008888888000000000888888800000000088bbbb8000000000000000
099929999920009000092998992000000000000000000000000000000000000000000000088888888800000008bb888bb8000000088b88888800000000000000
09002992299000009999299829999900000000000000000000000000000000000000000088b8b888bb80000088b8b8b888800000888b88888880000000000000
0000000000000000000090000000090000000000000000000000000000000000000000008b8b8b88b880000088bb88bbb8800000888bbbbb8880000000000000
0000000000000000000990000000000000000000000000000000000000000000000000008b888b8bb880000088b88888b88000008888888b8880000000000000
000000000000000000090000000000000000000000000000000000000000000000000000088888888800000008b888bb880000000888888b8800000000000000
0005500000055000000550000000000009b99b9000bbbb00000bb000000000000000000000888888800000000088888880000000008bbbb88000000000000000
005aa500005aa500005aa50000eeee00009bb90000bbbb00000bb000000000000000000000088888000000000008888800000000000888880000000000000000
005aa500805aa508005aa500099999900000000000099000000bb000000000000000000000008880000000000000888000000000000088800000000000000000
05aaaa8055aaaa5508aaaa509eeeeee90000000000099000000bb000000000000000000000000000000000000000000000000000000000000000000000000000
05ccaaa05aaccaa50aaacca09eeeeee90000000000000000000bb000000000000000000000000000000000000000000000000000000000000000000000000000
5caacaa08acaaca80aacaac5099999900000000000000000000bb000000000000000000000000000000000000000000000000000000000000000000000000000
5cccca5005cccc5005acccc500eeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00577500005775000057750000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000eeeeeeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000aaaa00000000000000000000000eeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000aaddddaa000000000000000eeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000
0000addd66ddda0000000000000eeeeeeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000
0000addd66ddda000000000000eeeeeeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000000
000adddddddddda00000000000eeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000
000adddd66dddda0000000000eeeeeeeeeee88eeeeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000000000000000000000
000addddddd66da000000000eeeeeeeebeeeee88eeeeeeeeeeeeee00000000000000000000000000000000000000000000000000000000000000000000000000
000addddddd66da000000000eeeeeeeebeeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000
000addddd6dddda000000000eeee8eeeebeeeeeeeeee88eeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000
000addddd6dddda000000000eeeee8eeeeeeeeeeeeee8eeebeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000
0000adddddddda0000000000eeeeee8eeeeeeeeeeeee8eeebeeeeee000000eeeeeee000000000000000000000000000000000000000000000000000000000000
0000adddddddda0000000000eeeeeeeeeeeeeeeeeeeeeeeebeeeeee000eeeeeeeeee000000000eeeeeeee0000000000000000000000000000000000000000000
00000aaddddaa00000000000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000eeeeee8eee000000000eeeeeeeeeee0000000000000000000000000000000000000000
0000000aaaa0000000000000eeeeeeeeeee000000000eeeeeeeeeee000eeeee8eeee000000000eeebeeeeeee0000000000000000000000000000000000000000
000000000000000000000000eeeeeeeeeee000000000eeeeeeeeeee000eeee8eeeee000000000eeebeeeeeee0000000000000000000000000000000000000000
000000000000000000000000eeeeeeebeee000000000eeeee8eeee000eeeeeeeeeee000000000eeeeeeeeeee0000000000000000000000000000000000000000
000000000000000000000000eeeeeeebeee000000000eeee8eeeee000eeeeeeeeeee000000000eeeeeeeeeee0000000000000000000000000000000000000000
000000000000000000000000eeeeeeeeeee000000000eee8eeeeee000eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000000
000000000000000000000000000eeeeeeee000000000eeeeeeeeee000eeeeeebeeeeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000000
00000000000000000000000000000000000000000000eeeeeee000000eeeeeebeee8eeeeeeeeeeeee8eeeeee0000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000eeeeeebeee8eeeeeeeeeeeeee8eeeee0000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000eeeeeeeee88eeeeeeeeeebeeee8eeee0000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeeeeeeeeebeeeeeeee0000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeee88eeeeebeeeeeeee0000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeee88eeeeeeeeeee00000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeeeeeeeeeee0000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeeeeeeeee00000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000eeeeeeeeeeeeee00000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000eeeeeeeeee000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000076ddddd000000000000000000000000076ddddd00000000000000aeee0000000000000000000
00000000000000000000000000000000000000000000000dd66776dddddd11ddd00000000000000dd66776dddddd11ddd0000000aa88ae000000000000000000
0000000000000000000000000000000000000000000000d1ddddddddddd1891ddd000000000000d1ddddddddddd1891ddd000000e8a88e000000000000000000
000000000000000000000000000000000000000000000d1898989898989898ddddd0000000000d1898989898989898ddddd00000eaaaae000000000000000000
00000000000000000000000000000000000000000000dd1989898989898989dddddd00000000dd1989898989898989dddddd0000e88a8e000000000000000000
0000000000000000000000000000000000000000000d1111ddddddddddddddddd111d000000d1111ddddddddddddddddd111d000ea88aa000000000000000000
000000000000000000000000000000000000000000d1151dddddddddddddddddd1511d0000d1151dddddddddddddddddd1511d000eeea0000000000000000000
00000000000000000000000000000000000000000d1155d1111111111111111dd15511d00d1155d1111111111111111dd15511d0000000000000000000000000
00000000000000000000000000000000000000000d1555d1333333333333331ddd5551d00d1555d133a3333333a3331ddd5551d0000000000000000000000000
00000000000000000000000000000000000000000dd555d13aa3333333aa331ddd555dd00dd555d133a3333333a3331ddd555dd0000000000000000000000000
00000000000000000000000000000000000000000dd555d133a333a333a3331ddd555dd00dd555d133a33aaa33a3331ddd555dd0000000000000000000000000
00000000000000000000000000000000000000000dda5ad133333a3a3333331ddda5add00dda5ad1333333333333331ddda5add0000000000000000000000000
000000000000000000000000000000000000000007d151d1111111111111111ddd151dd007d151d1111111111111111ddd151dd0000000000000000000000000
000000000000000000000000000000000000000077da5adddddddddddddddddddda5add077da5adddddddddddddddddddda5add0000000000000000000000000
000000000000000000000000000000000000000066ddaddddddddddddddd111ddddadddd66ddaddddddddddddddd111ddddadddd000000000000000000000000
00000000000000000000000000000000000000006d1dddddddddddddddd1181ddddddd776d1dddddddddddddddd1181ddddddd77000000000000000000000000
0000000000000000000000000000000000000000d1898989898dd6ddddd19e9dddddd777d1898989898dd6ddddd19e9dddddd7770aee00000000000000000000
0000000000000000000000000000000000000000d1989898989dd66dddd118e8ddddddd7d1989898989dd66dddd118e8ddddddd7a888e0000000000000000000
0000000000000000000000000000000000000000dd111dddd98dd766dddddd9e911d11dddd111dddd98dd766dddddd9e911d11dde878e0000000000000000000
0000000000000000000000000000000000000000d1151dddd89d77766dddddd8e811511dd1151dddd89d77766dddddd8e811511deaaae0000000000000000000
000000000000000000000000000000000000000011551dddd98d77766dddddd19111551111551dddd98d77766dddddd191115511e888a0000000000000000000
00000000000000000000000000000000000000001555dddd1891ddddddddddd111dd55511555dddd1891ddddddddddd111dd55510eea00000000000000000000
0000000000000000000000000000000000000000d555ddddd1111111111d666ddddd555dd555ddddd1111111111d666ddddd555d000000000000000000000000
0000000000000000000000000000000000000000055500ddddd15555551d766660005550055500ddddd15555551d766660005550000000000000000000000000
0000000000000000000000000000000000000000055500dddddd555555ddd77760005550055500dddddd555555ddd77760005550000000000000000000000000
00000000000000000000000000000000000000000a5a000000dd555555dd00000000a5a00a5a000000dd555555dd00000000a5a0000000000000000000000000
00000000000000000000000000000000000000000151000000005555550000000000151001510000000055555500000000001510000000000000000000000000
00000000000000000000000000000000000000000a5a00000000aa55aa0000000000a5a00a5a00000000aa55aa0000000000a5a0000000000000000000000000
000000000000000000000000000000000000000000a00000000011551100000000000a0000a00000000011551100000000000a00000000000000000000000000
0000000000000000000000000000000000000000000000000000aa55aa00000000000000000000000000aa55aa00000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000aa000000000000000000000000000000aa0000000000000000000000000000000000000000
__label__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000
00000000050050000000050050000000000009000000050050000000050050000000050050000000050050000000000009000000050050000000050050000000
000000005500550000005500550000000c11c99000005500550000005500550000005500550000005500550000000c11c9900000550055000000550055000000
00000000550055000000550055000000ddaae8000000550055000000550055000000550055000000550055000000ddaae8000000550055000000550055000000
00000002222222200002222222200000d0dd0d000002222222200002222222200002222222200002222222200000d0dd0d000002222222200002222222200000
00000002282282200002282282200000d00008000002282282200002282282200002282282200002282282200000d00008000002282282200002282282200000
00000000222222200000222222200000d0000d000000222222200000222222200000222222200000222222200000d0000d000000222222200000222222200000
00000000227722000000227722000000000000000000227722000000227722000000227722000000227722000000000000000000227722000000227722000000
00000000002200000000002200000000000000000000002200000000002200000000002200000000002200000000000000000000002207000000002200000000
00000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000
00000000050050000000050050000000000009000000050050000000050050000000050050000000050050000000000009000000050050000000050050000000
000000005500550000005500550000000c11c99000005500550000005500550000005500550000005500557700000c11c9970000550055000000550055000000
00000000550055000000550055000000ddaae8000000550055000010550055000000550055000000550055000000ddaae8000000550055000000550055000000
00000002222222200002222222200000d0dd0d000002222222200002222222200002222222200002222222200000d0dd0d000002222222200002222222200000
00000002282282200002282282200000d00008000002282282200002282282200002282282200002282282200000d00008000002282282200002282282200000
0000009e222222200000222222200000d0000d000000222222200000222222200000222222200000222222200000d0000d000000222222200000222222200000
0000009e227722000000227722000000000000000000227722000000227722000000227722000000227722000000000000000000227722000000227722000000
00000009992290000000002200000000000000000000002200000000002200000000002200000000002200000000000000000000002200000000002200000000
00000000eeee00000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000007000
00000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000050050000000050050000000000009000000050050000000050050000000050050000000050050000000000009000000050050000000050050000000
000000005500550000005500550000000c11c99000005500550000005500550000005500550000005500550000000c11c9900000550055000000550055001000
00000000550055000000550055000000ddaae8000000550055000000550055000000550055000000550055000000ddaae8000000550055100000550055000000
00000002222222200002222222200000d0dd0d000012222222200002222222200002222222200002222222200000d0dd0d000002222222200002222222200100
00000002282282200002282282200000d00008000002282282200002282282200002282282200002282282200000d00008000002282282200002282282200000
00000000222222200000222222200000d0000d000000222222200000222222200000222222200000222222200000d0000d000000222222200000222222200000
00000000227722000000227722000000000000000000227722000000227722000000227722000000227722000000000000000000227722000000227722000000
00000000002200000000002200000000000000000000002200000000002200000000002200000000002200000000000000000000002200000000002200000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000
00000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000050050000000050050000000000009000000050050000000050050000000050050000000050050000000000009000000050050000000050050000000
000000005500550000005500555000001c11c99000005500550000005500550000005500550000005500550000000c11c9900000550055000000550055000000
00000000550055000000550055000000ddaae8000000550055000000550055000000550055000000550055000000ddaae8000000550055000000550055000000
00000002222222200002222222200000d0dd0d000002222222200002222222200002222222200002222222200000d0dd0d000002222222200002222222200000
00000002282282200002282282200000d00008000002282282200002282282200002282282200002282282200000d00008000002282282200002282282200000
00000000222222200000222222200000d0000d000000222222200000222222200000222222200000222222200007d0000d000000222222200000222222200000
00000000227722000000227722000000000000000000227722000000227722000000227722000000227722000000000000000000227722000000227722000000
00000000002200000000002200000000000000000000002200000000002200000000002200000000002200000000000000000000002200000000002200000000
00000000000000000000000050000000000000000000000000000000000000000000000700000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000700000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000070000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000000000000000000000000070000000
00000000000000000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000005000000000000000000007000000000000000070000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000700000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000700000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000050000000000000000000000000000010070000000000000000000000070000000000000000000000000000000000000000000000000000000000
00700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070000000000000000000
00000000000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000000000
00000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000050000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000000000000070000
00700000000000000000000100000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000
10000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000100000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000
00000000000000000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000010000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000
00000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000500000000000000055000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000005aa500000000000000000000000000070000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000805aa508000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000055aaaa55000000000000000000000000000000000000000000000000000000010
0000000000000000000000000000000000000000000000000000000000000005aaccaa5000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000005000000000000000000000000008acaaca8000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000500000000000000000000000000005cccc50000000000010000000000000000000000000000000000000000000000
00000000000000000000000000000000000700000000100000000000000000000577500000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000bbbb00000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000010000000000000000000000000000000bbbb00000000000000000000000000000000000000000000000000000000000
0aaa0aa00aaa0aaa00aa0a0a00000000000000000000000000000000000000000099000000000010000000000000000000000000000000000000000000000000
0a000a0a0a000a0a0a000a0a00a00000000000000000000000000000000000000099000000000000000000000000000000000000000000000000000000000000
0aa00a0a0aa00aa00a000aaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0a000a0a0a000a0a0a0a000a00a05000000000000000000000000000000000000000000000000100000000000000000000000000000500000000000000000000
0aaa0a0a0aaa0a0a0aaa0aaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa000000000000000aa00aa00aa0aaa0aaa00000aaa0000000000000000000000000000000000700000000000
0aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa00000000000000a000a000a0a0a0a0a0000a00a0a0000000000000000000000000000000000000000000000
0aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa00000000000000aaa0a000a0a0aa00aa000000a0a0000000000000000000000000000000000000000000000
0aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa0000000000000000a0a000a0a0a0a0a0000a00a0a0000500000000000000000000000000000000000000000
0aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa00000000000000aa000aa0aa00a0a0aaa00000aaa0000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__sfx__
00060000260301a0301903019030280302703025030220301e0301b0301803017030170301703017030170301703016030170301703018030180301803018030180301a0301c0301e03020030220302303024030
000200002545025450244502345024450254502445022450204500245001450014500045000450004500045001450024502145022450224502345023450234502245022450214502045021450214502245000000
050100001213015130171301a1301a1301b120251232a1232d1233012300100191001e100211002210022100221002d1002e1002d1002d1002d1002d100001000010000100001000010000100001000010000100
4801000004550075500b5500f550135501655017550005000050000500125000f5000050000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500
20020000255502255018550115500b550065500055007550115501a5501e550245702d57037570065001d5001c50000500045000f500025000d500135001b5001c500285001c5001650011500085000150000500
000200000a4500b4500e4501245012450174502f45032450167001670000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00020000023200432004320043200c320243302633026330253300030000300013000130000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
000400003735035350323502d35021350133300c3200b3100b3101c3001b300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
00040000096500b650006501165013650006001c60000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600006000060000600
0003000003250052500f2500020000200002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200002000020000200
000d0000143401334012340123400130013330133301333013330000001b3301f33026330293402a3402934027340203400000020340213402134007300013001f3401f3401934017340153401c3000030000000
000f0000076500b650006501065014650000000f654126541465417654196541c65404600206501c65017650116550000000000086500b650000000e6500f65000000236501a6501065509655000000000000000
000400000a7500b7500d7500f75010750127501375000700007001575115751157511675117751177510070000700007000070000700007000070000700007000070000700007000070000700007000070000700
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011011200c0433f2151b3133f215243151b3133f2150c0430c0433f2151b4131b41324315243153f2150c0430c0431b4133f2151b4133f215243150c0433f2150c0431b3133f2151b31324315243150c0433f215
011000000c0430c0000c000000000c043000000c000000000c0430c0000c000000000c043000000c000000000c0430c0000c000000000c043000000c000000000c0430c0000c000000000c043000000c00000000
01100000021000210002540025200e01102540025200e01102540025200e01102540025200e011025400e01102540025200e01102540025200e01102540025200e01102540025200e011025400e011025400e011
010300000974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743097430974309743
011000201f0401f0401f0241f0201b0401b0401b0241b02016040160401602416020140401404014024140201f0401f0401f0241f0201b0401b0401b0241b0201604016040160241602014040140401402414020
01100000145101f5101f5101f5101b5101b5101b5101b51016510165101651016510145101451014510145101f5101f5101f5101f5101b5101b5101b5101b510165101651016510165101451014510145101f510
011000001f0401f0401f5241f5201b0401b0401b5241b52016040160401652416520140401404014524145201f0401f0401f5241f5201b0401b0401b5241b5201604016040165241652014040140401452414520
01100000185501855018540185401853218522235501f5501e5501e5501e5401e5301e5221e5121c5501c5501c5501c5501c5501c5401c5401c5301c5301c5301c5301c5221c5221c5121c5121c5122655026540
011800000c0430000000000000000e3410000000000000000c0430000000000000000c3410000000000000000c0430000000000000000c3410000000000000000c0430000000000000000c341000000000000000
011700000344506335082250a4150d3450323506425083150a2450d4350c0111b111275260c0111b111175520344506335082250a4150d3450323506425083150a2450d4351b1110c011275261b1110c0112b731
01180000000000f725120151472516015197250f015127251401516725190151800027000330001800027000000000f725120151472516015197250f015127251401516725190151800027000330001800027000
011800001931520315223151b3151b31519315223151b3151b31520315223151e3151b3152231516317123171b3151e315203152031519315193152231522315193151b3151b315193151b3151e3151631712315
01180000000000f725120151472516015197250f015127251401516725190151b5121e512185122651227000000000f725120151472516015197250f015127251401516725190151b5121e512185122651227000
000900000f0200f0200d0200d0200c02000000000000000016032160321403214032130321a000180000c0000f0200f0200d0200d0200c0201d0531e0531e0531f0531f0551f0551f05500000000000000000000
00090000000000f0100f0100d0100d0100c01000000000000000016012160121401214012130120000000000000000f0100f0100d0100d0100c0101d0331e0331e0331f0331f0351f0351f035000000000000000
000a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e5001150014500175001c5000e5501155014550175501c5501e55020550215502155021550
010600002d3202a3202832025320223201f3201c3201a320163201432037320323202f3202a32026320213201d32015320123200e320073400000000000000000000000000000000000000000000000000000000
010800002d3002a3002830025300223001f3001c3001a300163001430037300323002f3002a30026300213001d300153001230012320123201232012320003001232012320123201232000000073250732507325
011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012300123001230012300000001230012300123001230000000073000730007300
__music__
01 16171819
00 16171819
02 16171a19
03 12134344
00 0f104344
03 12134344
04 1b1c1d44
04 1e1f4344

