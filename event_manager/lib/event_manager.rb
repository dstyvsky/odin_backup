require "csv"
require "sunlight/congress"
require 'erb'


Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode(zipcode)
	zipcode.to_s.rjust(5,"0")[0..4]
end


def clean_phone_number(phone_number)
	phone_number = phone_number.to_s
	phone_array = []
	final_phone_array = []
	phone_array = phone_number.split("")

	phone_array.each do |character|
		if /\A\d+\z/.match(character)
			final_phone_array << character
		end
	end
	phone_number = final_phone_array.join('')

	if phone_number.length == 10
		phone_number
	elsif phone_number.length == 11 && phone_number[0] = "1"
		phone_number[0] = ''
		phone_number
	else
		phone_number = "0000000000"
	end

	number_formatted = "#{phone_number[0..2]}-#{phone_number[3..5]}-#{phone_number[6..9]}"

end		



def legislators_by_zipcode(zipcode)
	legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

def save_thank_you_letters(id, form_letter)
	Dir.mkdir("output") unless Dir.exists? "output"

	filename = "output/thanks_#{id}.html"
	
	File.open(filename, 'w') do |file|
		file.puts form_letter
	end
end


puts "EventManager Initialized"

contents = CSV.open "event_attendees.csv", headers:true, header_converters: :symbol

template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

contents.each do |row|
	id = row[0]
	name = row[:first_name]
	zipcode = clean_zipcode(row[:zipcode])
	number = clean_phone_number(row[:homephone])
	puts "#{row[:homephone]}  #{number}"
	legislators = legislators_by_zipcode(zipcode)




	form_letter = erb_template.result(binding)

	save_thank_you_letters(id, form_letter)

	
end

