module ScarletHeroesBot

# greet() = print("Hello World!")

using Random

DAMAGE_CHART = ((min_die_score = 10, damage = 4),
		(min_die_score = 6, damage = 2),
		(min_die_score = 2, damage = 1),
		(min_die_score = 1, damage = 0))

function convert_die_to_damage(die_roll)
	for damage_chart_entry in DAMAGE_CHART
		if die_roll >= damage_chart_entry.min_die_score
			return damage_chart_entry.damage
		end
	end
	return 0
end

function roll_damage_roll(n,m)
	damage = 0
	
	for die in 1:n
		damage += convert_die_to_damage(Random.rand(1:m))
	end

	damage
end

# Discord stuff to be put here.

using Discord

end # module
