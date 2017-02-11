def create_partners(names)
	array = []
	array_of_paired_names = names.shuffle.each_slice(2)
	array_of_paired_names.each do |partners|
		array << partners

		if partners.length == 2
			else
				array.last << partners
		end
	end
	array
end