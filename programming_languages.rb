require 'pry'

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

def reformat_languages(hash)
    new_hash = {}
    hash.each do |style, second|
      second.each do |language, type|
        type.each do |type_data, type_name|
        new_hash[language] = {type_data => type_name, :style => [style]  }
      end
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
