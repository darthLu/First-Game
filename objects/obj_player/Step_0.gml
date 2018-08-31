// Moving around
if (keyboard_check(ord("D")) || keyboard_check(vk_right)) x += 4;
if (keyboard_check(ord("A")) || keyboard_check(vk_left)) x -= 4;
if (keyboard_check(ord("W")) || keyboard_check(vk_up)) y -= 4;
if (keyboard_check(ord("S")) || keyboard_check(vk_down)) y += 4;

image_angle =  point_direction(x, y, mouse_x, mouse_y);

// Shoot
if (mouse_check_button(mb_left)) && (cooldown < 1) {
	instance_create_layer(x, y, "Bullets_Layer", obj_bullet);
	audio_play_sound(snd_pew2, 8, false);
	cooldown = 10;
}

cooldown -= 1;