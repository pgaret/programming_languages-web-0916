require 'pry'

def reformat_languages(languages)
  # your code here
  nLang = {}
  languages.each do |a, b|
    b.each do |c, d|
      if !nLang.keys.include?(c)
        nLang[c] = d
        nLang[c][:style] = Array(a)
      else
        nLang[c][:style].push(a)
      end
    end
  end
  nLang
end
