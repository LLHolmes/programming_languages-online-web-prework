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
      reformatted[langs] = attributes
      puts "Initial: #{reformatted[langs]}"
      if reformatted[langs][:style] == nil
        reformatted[langs][:style] = [style]
      else
        reformatted[langs][:style] << "NEW THINGY"
      end
      puts "Additional: #{reformatted[langs]}"
    end
  end
  puts reformatted
end

reformat_languages(languages)