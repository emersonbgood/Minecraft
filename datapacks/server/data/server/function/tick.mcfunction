execute as @a[scores={llama=!1}, tag=!rules_open] run dialog show @s server:termsandconditions
tag @a[scores={llama=!1}, tag=!rules_open] add rules_open
execute as @a[scores={llama=1}, tag=rules_open] run tag @s remove rules_open