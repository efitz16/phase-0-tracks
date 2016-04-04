highway = {
	blue_car: {
		model_type: "Honda",
		passengers: ["woman", "man", "child", "teenager"],
		license_plate: "Montana 56-5936N"
	},
	red_convertible: {
		model_type: "Chevrolet",
		passengers: ["man", "woman"],
		license_plate: "Arkansas 594 DTN"
	},
	gray_car: {
		model_type: "Ford",
		passengers: ["woman", "child", "child"],
		license_plate: "New York FNH-2704"
	},
	black_truck: {
		model_type: "Acura",
		passengers: ["teenager", "woman"],
		license_plate: "Pennsylvania MSX 6047"
	}
}

puts "Here are the passengers in the blue #{highway[:blue_car][:model_type]}:"

p highway[:blue_car][:passengers]

puts #new line

puts "This is the license plate of the red #{highway[:red_convertible][:model_type]} convertible:"

p highway[:red_convertible][:license_plate]

puts

puts "This is the driver of the gray #{highway[:gray_car][:model_type]}:"

p highway[:gray_car][:passengers][0]