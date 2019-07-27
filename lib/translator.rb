require 'yaml'
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
result = {"get_meaning" => {}, "get_emoticon" => {}}
library.each do |meaning, emoticons|
  result["get_meaning"][emoticons[1]] = meaning
  result["get_emoticon"][emoticons[0]] = emoticons[1]
end
result
end

def get_japanese_emoticon
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
