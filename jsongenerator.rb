require "json"


puts "Application version ?"
version = gets.chomp

reg = /(?:Icon-App-([0-9]+\.?[0-9]?)x[0-9]+\.?[0-9]?+@([0-9])x\.png)/

hash = Hash.new
hash["images"] = Array.new

Dir.entries(".").each do |entry|
	puts entry	
	if match = entry.match(reg) then
		size, idx = match.captures

	item = Hash.new
	item["size"] = size.to_s + "x" + size.to_s
	item["filename"] = entry
	item["scale"] = idx.to_s + "x"
	item["idiom"] = "iphone"
	hash["images"].push(item)


	iItem = Hash.new
	iItem["size"] = size.to_s + "x" + size.to_s
	iItem["filename"] = entry
	iItem["scale"] = idx.to_s + "x"
	iItem["idiom"] = "ipad"
	hash["images"].push(iItem)
	end
	
	#add in hash images
end

	hash["info"] = Hash.new
	hash["info"]["version"] = version.to_i
	hash["info"]["author"] = "xcode"

puts JSON.pretty_generate(hash)






