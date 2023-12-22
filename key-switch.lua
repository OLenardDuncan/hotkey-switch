function key_down(key)
	joint = get_world_state().selected_joint;
	player = get_world_state().selected_player;

	if (key == 113) then
		if (get_joint_info(player, joint).state == 1) then
			set_joint_state(player, joint, 2);
		else
			set_joint_state(player, joint, 1);
		end
	elseif (key == 101) then
		if (get_joint_info(player, joint).state == 3) then
			set_joint_state(player, joint, 4);
		else
			set_joint_state(player, joint, 3);
		end
	end
end

add_hook("key_down", "key_down", key_down)
--[[
From Yoyo: 
"You can remove the conditionals if you use:
set_joint_state(player, joint, 3 - get_joint_info(player, joint))
set_joint_state(player, joint, 7 - get_joint_info(player, joint))
You should also check if joint ~= -1, that should fix the error when not hovering a joint."
 --]]
