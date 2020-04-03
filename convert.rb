sizes = {"6_5" => "1242x2688", "5_5" => "1242x2208", "12_9" => "2048x2732"}


Dir.entries(".").each do |entry|
	extension = entry[-3..-1]
	if(extension.downcase == "png") then
		# convert to sizes
		sizes.each do |key, value|
			fname = entry[0..-5]
			filename = entry + "_" + key + ".png"
			str = "convert -resize #{value}! #{entry} #{filename}"
			system(str)
		end
	end
end

alphaoff = `find . -name "*.png" -exec convert "{}" -alpha off "{}" \;`
system(alphaoff)
