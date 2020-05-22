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
# require modules here

def load_library
  # code goes here
def load_library(yaml_file)
  response = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(yaml_file)
  library.each do |trans, emos|
    response["get_meaning"][emos[1]] = trans
    response["get_emoticon"][emos[0]] = emos[1]
  end
  response
end

def get_japanese_emoticon
  # code goes here
def get_japanese_emoticon(yaml_file, emoticon)
  library = load_library(yaml_file)
  response = nil
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      response = japanese
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end
end

def get_english_meaning
  # code goes here
def get_english_meaning(yaml_file, emoticon)
  library = load_library(yaml_file)
  response = nil
  library["get_meaning"].each do |emo, trans|
    if emo == emoticon
      response = trans
    end
  end
  if response == nil
    return "Sorry, that emoticon was not found"
  else
    return response
  end