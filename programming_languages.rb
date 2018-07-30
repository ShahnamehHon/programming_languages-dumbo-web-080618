def reformat_languages(languages)
  final_hash = {}
  languages.each do |style, langs|
  	langs.each do |lang, type|
  		final_hash[lang] = type
  		final_hash[lang][:style] = []
  		final_hash[lang][:style] << style
  		final_hash[lang][:style] << :oo if lang == :javascript
  	end
  end
  final_hash
end
