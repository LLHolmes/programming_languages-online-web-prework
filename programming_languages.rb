languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  reformatted = {}
  languages.each do |style, language_info|
    language_info.each do |langs, attributes|
      puts langs
      if reformatted[langs] == nil
        reformatted[langs] = attributes
        reformatted[langs][:style] = [style]
      else
        puts "ELSE #{langs}"
        reformatted[langs][:style] << style
#        if reformatted[langs][:style] == nil
#          reformatted[langs][:style] = [style]
#        else
#          puts "ELSE"
#          reformatted[langs][:style] << style
      end
      puts "Additional: #{reformatted[langs]}"
    end
  end
  puts reformatted
end

reformat_languages(languages)