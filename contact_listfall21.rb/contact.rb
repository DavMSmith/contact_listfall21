# Build a contact list
# Create a menu that allows a user to select 
# 1) Create a contact 2) View All Contacts 3) Exit
# grab the users information 
# store into a variable to use later
# use a conditional 
# store contacts somewhere array
# contact a hash { first_name: "mom", last_name: "", nickname: "", phone: "", email: ""}
# 1) Create a contact 
# grab the first name of the contact
# grab the last name of the contact
# grab the nick name of the contact
# grab the phone of the contact
# grab the mail of the contact
# inputs outs puts (puts)
# put the values in the right keys in the new contact hash
# add the contact hash into the contacts array
# 2) View All Contacts 
#grab arr of contacts (one at a time)
#iterating through thet array, giving us access to all the contacts
#means that we are displaying all contacts in a readable way for the user.
#would probably mean displaying with string interpolation
# 3) Exit
#puts goodbye message

# Note: The menu should loop until the user exits
#loop, recursion (would probably use a recursion becaue less likely to hit an infinite loop)
# sudo coding, commenting out the process and break up the problem, breaking it into small, manageable steps. 
@contacts = [
  { first_name: "bob", last_name: "jones", nickname: "b", phone: "123-123-1233", email: "bob@email.com"},
  { first_name: "jill", last_name: "rick", nickname: "jj", phone: "123-123-1111", email: "jill@email.com"},
  { first_name: "lucy", last_name: "jims", nickname: "lol", phone: "123-123-2222", email: "lucy@email.com"}
]
# @contacts[0][:first_name]
# @contacts[1][:first_name]
# @contacts[2][:first_name]

def main_menu
  puts "1) Create New Contact"
  puts "2) View All Contacts"
  puts "3) Exit"
  user_input = gets.strip.to_i
  if user_input == 1
    puts "create Contact"
  elsif user_input == 2
    all_contacts
  elsif user_input == 3
    puts "Goodbye, thanks for stopping by!"
    exit
  else
    puts "Invaild Input, try 1,2 or 3"
    main_menu
  end
  # p user_input
end

def all_contacts
  # puts "view all contacts"
  # *grab arr of contact
# *iterating through the array  
# *put out the contact info in a readable way
  # p @contacts
  # iterator
  # { first_name: "bob", last_name: "jones", nickname: "b", phone: "123-123-1233", email: "bob@email.com" }
  @contacts.each do |contact|
    puts "First name: #{contact[:first_name]}"
    puts "Last name: #{contact[:last_name]}"
    puts "Nickname: #{contact[:nickname]}"
    puts "Phone: #{contact[:phone]}"
    puts "Email: #{contact[:email]}"
    puts "---------------------"
  end

  # loop only for js
  # for (i = 0; i < @contacts.count; i++) {
  #   puts "First name: #{contact[i][:first_name]}"
  #   puts "Last name: #{contact[i][:last_name]}"
  #   puts "Nickname: #{contact[i][:nickname]}"
  #   puts "Phone: #{contact[i][:phone]}"
  #   puts "Email: #{contact[i][:email]}"
  #   puts "---------------------"
  # }
  # for contact in @contacts do
  #   puts "First name: #{contact[:first_name]}"
  #   puts "Last name: #{contact[:last_name]}"
  #   puts "Nickname: #{contact[:nickname]}"
  #   puts "Phone: #{contact[:phone]}"
  #   puts "Email: #{contact[:email]}"
  #   puts "---------------------"
  # end
  main_menu
end

# while true
main_menu
# end
















  #Test out code as you go.