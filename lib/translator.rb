# require modules here
require 'pry'
require 'yaml'


def load_library(file)
  emoticons = YAML.load_file(file)
  emoticons.each_with_object({}) do |(english_word, symbol_pair), outter_most_hash|
    outter_most_hash[english_word]={:english => nil, :japanese => nil}
    symbol_pair.each do |symbol|
      outter_most_hash[english_word][:english] = symbol_pair[0]
      outter_most_hash[english_word][:japanese] = symbol_pair[1]
    end
  end
end




def get_japanese_emoticon(file, japanese_emoticon)
  outter_most_hash = load_library(file)
  outter_most_hash.each do |english_word, symbol_pair|
    binding.pry

end
end


def get_english_meaning(file, emoticon)
  outter_most_hash = load_library(file)

end
