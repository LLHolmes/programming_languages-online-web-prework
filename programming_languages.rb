def reformat_languages(languages)
  reformatted = {}
  languages.each do |style, language_info|
    language_info.each do |langs, attributes|
      if reformatted[langs] == nil
        reformatted[langs] = attributes
        reformatted[langs][:style] = [style]
      else
        reformatted[langs][:style] << style
      end
    end
  end
  reformatted
end
