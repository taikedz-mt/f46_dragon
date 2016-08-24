local dragondef = {
   type = "animal",
   passive = false,
   rotate = 180,
   attacks_monsters = true,
   damage = 4,
   reach = 3,
   attack_type = "dogfight",
   shoot_interval = 2.5,
	dogshoot_switch = 2,
	dogshoot_count = 0,
	dogshoot_count_max =5,
   arrow = "dmobs:fire",
   shoot_offset = 1,
   hp_min = 70,
   hp_max = 100,
   armor = 70,
	collisionbox = {-0.6, -1.2, -0.6, 0.6, 0.6, 0.6},
   visual = "mesh",
   mesh = "f46_dragon.b3d",
   textures = {
      {"f46_dragon.png"},
   },
   blood_texture = "mobs_blood.png",
   visual_size = {x=2, y=2},
   makes_footstep_sound = true,
	runaway = false,
	jump_chance = 30,
	walk_chance = 80,
	pathfinding = true,
	fall_damage = 0,
   sounds = {
      shoot_attack = "mobs_fireball",
   },
   walk_velocity = 3,
   run_velocity = 5,
   jump = true,
   fly = false,
   drops = {
      {name = "default:mese_crystal", chance = 2, min = 2, max = 2},
   },
   fall_speed = 0,
   stepheight = 10,
   water_damage = 2,
   lava_damage = 0,
   light_damage = 0,
   view_range = 20,
   animation = {
      speed_normal = 10,
      speed_run = 20,
      walk_start = 180,
      walk_end = 200,
      stand_start = 0,
      stand_end = 80,
      run_start = 180,
      run_end = 200,
      punch_start = 140,
      punch_end = 170,
      punch_speed = 20,
   },
	knock_back = 2,
}

if minetest.get_modpath("dmobs") then
	dragondef.attack_type = "dogshoot"
end

mobs:register_mob("f46_dragon:dragon", dragondef)

mobs:spawn_specific("f46_dragon:dragon", {"obsidian"}, {"default:lava_source","ethereal:fiery_dirt"}, 20, 0, 300, 1000, 2, -31000, 31000)
   
mobs:register_egg("f46_dragon:dragon", "Farfadet Dragon", "default_apple.png", 1)

--[[
<farfadet46> IDLE = 0-80
<farfadet46> crache 90-130
<farfadet46> griffe 140-170
<farfadet46> marche 180-200
--]]
