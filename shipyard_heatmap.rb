require "Medusahoseki"

a = "~~~~~~~~~~~~~#~~~~~~~~~~~~~
~~~~#~~~~~~~#.#~~~~~~~#~~~~ 
~~~#.#~~~~~#...#~~~~~#.#~~~
~~#...#~~~~#...#~~~~#...#~~
~~#...#~~~~~#.#~~~~~#...#~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~~~#~~~~~~~~~~~~~~~~~#~~~~"

b = "~~~~#~~~~~~~~~~~~~~~~~#~~~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~#...#~~~~~#.#~~~~~#...#~~
~~#...#~~~~#...#~~~~#...#~~
~~~#.#~~~~~#...#~~~~~#.#~~~
~~~~#~~~~~~~#.#~~~~~~~#~~~~
~~~~~~~~~~~~~#~~~~~~~~~~~~~"

c = "~~~~#~~~~~~~~~~~~~~~~~#~~~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~#...#~~~~~#.#~~~~~#...#~~
~~~~~~~~~~~#...#~~~~#...#~~
~~~~~~~~~~~#...#~~~~~#.#~~~
~~~~~~~~~~~~#.#~~~~~~~#~~~~
~~~~~~~~~~~~~#~~~~~~~~~~~~~"

d = "~~~~#~~~~~~~~~~~~~~~~~#~~~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~#...#~~~~~#.#~~~~~#...#~~
~~#...#~~~~#...#~~~~~~~~~~~
~~~#.#~~~~~#...#~~~~~~~~~~~
~~~~#~~~~~~~#.#~~~~~~~~~~~~
~~~~~~~~~~~~~#~~~~~~~~~~~~~"

e = "~~~~#~~~~~~~~~~~~~~~~~#~~~~
~~~#.#~~~~~~~~~~~~~~~#.#~~~
~~#...#~~~~~~~~~~~~~#...#~~
~~#...#~~~~~~~~~~~~~#...#~~
~~~#.#~~~~~#...#~~~~~#.#~~~
~~~~#~~~~~~~#.#~~~~~~~#~~~~
~~~~~~~~~~~~~#~~~~~~~~~~~~~"

f = "~~~~~~~~~~~~~#~~~~~~~~~~~~~
~~~~~~~~~~~~#.#~~~~~~~#~~~~ 
~~~~~~~~~~~#...#~~~~~#.#~~~
~~~~~~~~~~~#...#~~~~#...#~~
~~#...#~~~~~#.#~~~~~#...#~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~~~#~~~~~~~~~~~~~~~~~#~~~~"

g = "~~~~~~~~~~~~~#~~~~~~~~~~~~~
~~~~#~~~~~~~#.#~~~~~~~~~~~~ 
~~~#.#~~~~~#...#~~~~~~~~~~~
~~#...#~~~~#...#~~~~~~~~~~~
~~#...#~~~~~#.#~~~~~#...#~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~~~#~~~~~~~~~~~~~~~~~#~~~~"

h = "~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~#~~~~~~~~~~~~~~~~~#~~~~ 
~~~#.#~~~~~~~~~~~~~~~#.#~~~
~~#...#~~~~#...#~~~~#...#~~
~~#...#~~~~~#.#~~~~~#...#~~
~~~#.#~~~~~~~#~~~~~~~#.#~~~
~~~~#~~~~~~~~~~~~~~~~~#~~~~"

ships_sunk = [
  [[a, a, a, a, a, a, a, a],
   [a, a, a, a, a, a, a, b],
   [a, a, a, a, a, a, a, c],
   [a, a, a, a, a, a, a, d],
   [a, a, a, a, a, a, a, e],
   [a, a, a, a, a, a, a, f],
   [a, a, a, a, a, a, a, g],
   [a, a, a, a, a, a, a, h]],

  [[b, b, b, b, b, b, b, a],
   [b, b, b, b, b, b, b, b],
   [b, b, b, b, b, b, b, c],
   [b, b, b, b, b, b, b, d],
   [b, b, b, b, b, b, b, e],
   [b, b, b, b, b, b, b, f],
   [b, b, b, b, b, b, b, g],
   [b, b, b, b, b, b, b, h]],

  [[c, c, c, c, c, c, c, a],
   [c, c, c, c, c, c, c, b],
   [c, c, c, c, c, c, c, c],
   [c, c, c, c, c, c, c, d],
   [c, c, c, c, c, c, c, e],
   [c, c, c, c, c, c, c, f],
   [c, c, c, c, c, c, c, g],
   [c, c, c, c, c, c, c, h]],

  [[d, d, d, d, d, d, d, a],
   [d, d, d, d, d, d, d, b],
   [d, d, d, d, d, d, d, c],
   [d, d, d, d, d, d, d, d],
   [d, d, d, d, d, d, d, e],
   [d, d, d, d, d, d, d, f],
   [d, d, d, d, d, d, d, g],
   [d, d, d, d, d, d, d, h]],

  [[e, e, e, e, e, e, e, a],
   [e, e, e, e, e, e, e, b],
   [e, e, e, e, e, e, e, c],
   [e, e, e, e, e, e, e, d],
   [e, e, e, e, e, e, e, e],
   [e, e, e, e, e, e, e, f],
   [e, e, e, e, e, e, e, g],
   [e, e, e, e, e, e, e, h]],

  [[f, f, f, f, f, f, f, a],
   [f, f, f, f, f, f, f, b],
   [f, f, f, f, f, f, f, c],
   [f, f, f, f, f, f, f, d],
   [f, f, f, f, f, f, f, e],
   [f, f, f, f, f, f, f, f],
   [f, f, f, f, f, f, f, g],
   [f, f, f, f, f, f, f, h]],

  [[g, g, g, g, g, g, g, a],
   [g, g, g, g, g, g, g, b],
   [g, g, g, g, g, g, g, c],
   [g, g, g, g, g, g, g, d],
   [g, g, g, g, g, g, g, e],
   [g, g, g, g, g, g, g, f],
   [g, g, g, g, g, g, g, g],
   [g, g, g, g, g, g, g, h]],

  [[h, h, h, h, h, h, h, a],
   [h, h, h, h, h, h, h, b],
   [h, h, h, h, h, h, h, c],
   [h, h, h, h, h, h, h, d],
   [h, h, h, h, h, h, h, e],
   [h, h, h, h, h, h, h, f],
   [h, h, h, h, h, h, h, g],
   [h, h, h, h, h, h, h, h]],
]

3.times do
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_shipyard = ships_sunk[cur_row][cur_col][cur_arr]

  if    current_shipyard == a; puts a
  elsif current_shipyard == b; puts b
  elsif current_shipyard == c; puts c
  elsif current_shipyard == d; puts d
  elsif current_shipyard == e; puts e
  elsif current_shipyard == f; puts f
  elsif current_shipyard == g; puts g
  elsif current_shipyard == h; puts h
  else
    puts e
  end
end

thermodynamic_states = [
  [ :level_tre,    "The room becomes silent, except for the low hum og gears.", 0.003920842 ],
  [ :level_two, "The floor is starting to lose friction, with fog in the air.", 0.082653950 ],
  [ :level_one,                       "Residuals of ice are starting to form.", 0.189747360 ],
], [
  [ :level_one,                    "Surface layer of sand is starting to turn to glass.", 0.010331745 ],
  [ :level_two, "The marble on the floor is starting to soften and fabrics icinerating.", 0.020663488 ],
  [ :level_tre,                 "The room currently feels like the center of the Earth.", 0.094873680 ],
]

## Ideal Coldness
level_one_ice = thermodynamic_states[0][2][2]
level_two_ice = thermodynamic_states[0][1][2]
level_tre_ice = thermodynamic_states[0][0][2]

## Ideal Heat
level_one_fir = thermodynamic_states[0][0][2]
level_two_fir = thermodynamic_states[0][1][2]
level_tre_fir = thermodynamic_states[0][2][2]

2.times do
  get_statistics(:level_one, "Residuals of ice are starting to form.",
                 :level_two, "The floor is starting to lose its friction, fog in the air.",
                 :level_tre, "The room becomes silent, except for the low hum of gears.")
                   
                 dynamic_mode_switcher
end

ideal_cold = ( level_one_ice + level_two_ice + level_tre_ice ) / $current_probability

print "The present cold status: "

## First Probability
active_state = sore_float($current_probability > ideal_cold) do
  puts "#{$current_definition}"
  
  puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
end

active_state = shikashi_float(active_state, $current_probability < ideal_cold) do
  puts "#{$current_definition}"

  puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
end

active_state = matawa_float(active_state) do
  puts "#{$current_definition}."

  puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
end

2.times do
  get_statistics(:level_one, "Surface layer of sand is starting to turn to glass",
                 :level_two, "The marble on the floor is starting to soften and fabrics icinerating.",
                 :level_tre, "The room currently feels like the center of the Earth.")
                   
                 dynamic_mode_switcher
end

ideal_heat = ( level_one_fir + level_two_fir + level_tre_fir ) / $current_probability

print "The present heat status: "

## Second Probability
active_state = sore_float($current_probability > ideal_heat) do
  puts "#{$current_definition}"

  puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
end

active_state = shikashi_float(active_state, $current_probability < ideal_heat) do
  puts "#{$current_definition}"

  puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
end

active_state = matawa_float(active_state) do
  puts "#{$current_definition}."

  puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
end
