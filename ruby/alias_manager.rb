# Name Scrambler 2000

# Define a method to scramble given name.
def scrambler (name)
	swapped = name.split.rotate.join(" ") # Take name and flip it.
	swapped.downcase!  # Make the both names lowercase.
	name1 = swapped.tr("aeiou", "eioua") # Shift all vowels by 1 place.
	name2 = name1.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb") # Shift all conconants by 1 place.
	name3 = name2.split.map(&:capitalize).join(" ") # Make string into substrings capitalize and join back.
end