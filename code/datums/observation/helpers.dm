/atom/movable/proc/move_to_turf(var/atom/movable/am, var/old_loc, var/new_loc)
	var/turf/T = get_turf(new_loc)
	if(T && T != loc)
		forceMove(T)

// Similar to above but we also follow into nullspace
/atom/movable/proc/move_to_turf_or_null(var/atom/movable/am, var/old_loc, var/new_loc)
	var/turf/T = get_turf(new_loc)
	if(T != loc)
		forceMove(T)

/atom/proc/recursive_dir_set(var/atom/a, var/old_dir, var/new_dir)
	if (new_dir != old_dir)
		set_dir(new_dir)

/datum/proc/qdel_self()
	qdel(src)
