# require modules here

def load_library(file)
  library = {"meaning" => {}, "emoticon" => {} }
  YAML.load_file(file).each do |meaning, array|
    english, japanese = array
    library["emoticon"][english] = japanese
    library["meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning
  # code goes here
end
