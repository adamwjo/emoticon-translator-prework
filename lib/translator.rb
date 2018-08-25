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



def get_english_meaning
  # code goes here
end
