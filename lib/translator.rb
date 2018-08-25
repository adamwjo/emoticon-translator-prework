# require modules here
require 'yaml'



def load_library(file)
  library = {"meaning" => {}, "emoticon" => {} }
  YAML.load_file(file).each do |meaning, array|
    english, japanese = array
    library["emoticon"][english] = japanese
    library["meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
  result = library["emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file, emoticon)
  library = load_library(file)
  result = library["meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
