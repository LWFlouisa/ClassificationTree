## Classification Ranges
2.times do
  get_statistics(:highly_classified, "These signify topics of the highest classifcation tier",
                 :marginally_classified, "These signify topics that are almost public information",
                 :somewhat_classified, "Mid tier of classified information and not top secret.")
                 
                 dynamic_reward_allocation
end

#$current_defintion = File.read("data/statistics/definition/current_definition.txt")

if    $level == 0
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 1
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 2
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 3
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 4
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 5
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 6
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 7
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
elsif $level == 8
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
else
  puts "TIER #{$level} Classification"

  ideal_classification = [
    [ :highly_classified,      "These signify topics of the highest classifcation tier.", 0.379494720 ],
    [ :somewhat_classified,      "Mid tier of classified information and not top secret.", 0.041326975 ],
    [ :marginally_classified, "These signify topics that are almost public information.", 0.450000000 ],
  ]
  
  highly_classified     = ideal_classification[0][2]
  somewhat_classified    = ideal_classification[1][2]
  marginally_classified = ideal_classification[2][2]

  reanalyzed_probability = ( highly_classified + somewhat_classified + marginally_classified + $current_probability ) / 2

  classification_level = sore_float($current_probability > 0.8) do
    puts "#{$current_definition} is highly classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = shikashi_float(classification_level, $current_probability < 0.2) do
    puts "#{$current_definition} is marginally classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end

  classification_level = matawa_float(classification_level) do
    puts "#{$current_definition} is somewhat classified"

    puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
  end
end
