######################################################################################
#                                  Get Statistics                                    #
######################################################################################
def get_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]

  matrix = [[
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  $current_label       = label_type[cur_row][cur_col][cur_arr]
  $current_definition  = definition_type[cur_row][cur_col][cur_arr]

  #File.write("data/statistics/definition/current_definition.txt",       current_definition)
  
  base_probability = probability_type[cur_row][cur_col][cur_arr].to_i
  
  $current_probability = base_probability + graph_selection
  $current_information = "#{$current_label} #{$current_definition}"
  
  "I'm confident it is not [ #{$current_label} #{$current_definition} ] as it has only #{$current_probability} probability."
end

def reasses
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{$current_information} ] as its only #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{$current_information} ] as its only #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{$current_information} ] after all it has #{$current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability    = $current_probability + $current_probability
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"
  l5_reasses = "level fiv reasses"
  l6_reasses = "level six reasses"
  l7_reasses = "level sev reasses"
  l8_reasses = "level eit reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l4_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l5_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l6_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l7_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l1_reasses, l8_reasses]],

    [[l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l4_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l5_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l6_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l7_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l2_reasses, l8_reasses]],

    [[l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l4_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l5_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l6_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l7_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l3_reasses, l8_reasses]],

    [[l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l5_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l6_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l7_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l4_reasses, l8_reasses]],

    [[l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l1_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l2_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l3_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l4_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l6_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l7_reasses],
     [l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l5_reasses, l8_reasses]],

    [[l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l1_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l2_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l3_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l4_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l5_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l7_reasses],
     [l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l6_reasses, l8_reasses]],

    [[l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l1_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l2_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l3_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l4_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l5_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l6_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses],
     [l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l7_reasses, l8_reasses]],

    [[l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l1_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l2_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l3_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l4_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l5_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l6_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l7_reasses],
     [l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses, l8_reasses]],
  ]

  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; reasses; $level = 0
  elsif current_reward_structure == l2_reasses; 2.times do reasses end; $level = 1
  elsif current_reward_structure == l3_reasses; 3.times do reasses end; $level = 2
  elsif current_reward_structure == l4_reasses; 4.times do reasses end; $level = 3
  elsif current_reward_structure == l5_reasses; 5.times do reasses end; $level = 4
  elsif current_reward_structure == l6_reasses; 6.times do reasses end; $level = 5
  elsif current_reward_structure == l7_reasses; 7.times do reasses end; $level = 6
  elsif current_reward_structure == l8_reasses; 8.times do reasses end; $level = 7
  else
    reasses
    
    $level = 8
  end
end

######################################################################################
#                                 Maisettelingua                                     #
######################################################################################
def cette_int(condition)
  if condition
    yield
    
    return true
  end
  
  false
end

def self.maisette_int(already_done, condition)
  return true if already_done
  
  if condition
    yield
    
    return true
  end
end

def self.sinon_int(already_done)
  yield unless already_done
  
  unless already_done
    puts "Adviser: Let me think..."
      
    #if defined?(otherwise)
      #puts "#{otherwise[0]} is 'THAT'"
      #puts "#{otherwise[1]} is 'WHAT'"
    #end
  end
end

## That time
def sore_float(condition)
  if condition
    yield
    
    return true
  end
  
  false
end

def shikashi_float(already_done, condition)
  return true if already_done
  
  if condition
    yield
    
    return true
  end
end

def sonota_float(already_done)
  yield unless already_done
  
  unless already_done
    #if defined?(otherwise)
      #puts "#{otherwise_not[0]} is 'THAT'"
      #puts "#{otherwise_not[1]} is 'WHAT'"
    #end
  end
end

## A place of many rivers flowing together.
def matawa_float(already_done)
  yield unless already_done
  
  unless already_done
    #if defined?(otherwise)
      #puts "#{otherwise_not[0]} is 'THAT'"
      #puts "#{otherwise_not[1]} is 'WHAT'"
    #end
  end
end

def proximity_de_medusahoseki(a, b)
  maximum_distance     = b
  distance_probability = a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation.round
  
  "Distance from Medusahoseki: #{calculation}"
end

def proximity_de_nemedusahoseki(a, b)
  maximum_distance     = b
  distance_probability = 1 - a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation.round
  
  "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
end

def proximity_de_memorie(a)
  year_period = 12
  
  calculation = 12 - ( 12 * a )
  calculation = calculation.round
  
  "this memory was from a prior #{calculation} year period"
end

def mperiod_sprox(a, b)
  "#{a} over #{b}"
end
