# require modules here
=begin require 'pry'
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
  response = nil
  outter_most_hash[english_word].each do |english, japanese|
    if japanese_emoticon == english
      response = english_word
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end

def get_english_meaning(file, emoticon)
  outter_most_hash = load_library(file)

end
=end

require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][:english] = :japanese
    emoticon_hash["get_meaning"][:japanese] = english_word
    binding.pry
  end
  emoticon_hash
end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
