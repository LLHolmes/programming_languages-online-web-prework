def reformat_languages(languages)
  reformatted = {}
  languages.each do |style, language_info|
    language_info.each do |langs, attributes|
      reformatted[langs] = attributes
      puts "Initial: #{reformatted[langs]}"
      reformatted[langs][:style] = [style]
      puts "Additional: #{reformatted[langs]}"
    end
  end
  puts reformatted
end
