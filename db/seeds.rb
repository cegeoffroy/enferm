puts 'Creating users...'

admin = User.new
admin.first_name = "Charles"
admin.last_name = "Geoffroy"
admin.category = "Nurse"
admin.phone_number = "07470363677"
admin.email = 'charles.geoffroy@enfermmedical.co.uk'
admin.password = "123456"
admin.password_confirmation = "123456"
admin.admin = true
admin.save!

puts 'Finished!'

