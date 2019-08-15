# I wasn't sure how to add comments to the file 
# when I submitted so I'm going to add them here.
# I really struggled with the portion to allow to edit the contacts.
# If not for my neighbor I'm not sure I would have completed the assignment.
# I feel like when we are going through the lectures I understand what's 
# happeining, but when I am trying to apply the principles myself it seems
# like I have a hard time putting them into practice. Any additional help 
# or guidance that I can receive would be more than welcome.
# Thank you!! 


@contacts = ["Lindi", "Emma", "Kaidyn"]

def main_menu
puts "---Ruby Contact List---"
puts "1) View Contacts"
puts "2) Add Contact"
puts "3) Edit Contact"
puts "4) Delete Contact"
puts "5) Exit"
print "> "

case gets.to_i
when 1 
  show_contacts
  main_menu
when 2
  add_contact
  main_menu
when 3
  edit_contacts
  main_menu
when 4
  delete_contacts
  main_menu
when 5
  exit_to_main_menu
else 
  puts "Try Again"
  main_menu
  end
end     

def show_contacts
puts 
@contacts.each_with_index do |contact, index|
  puts "#{ index + 1 } #{contact}"
end
end

def add_contact
puts "Contact Name you would like to add?"
print">"
@contacts << gets.chomp
show_contacts
end

def edit_contacts
  puts @contacts
  puts "What contact would you like to edit?"
  print ">"
  index = gets.chomp.to_i
  puts "What is the new name?"
  @contacts[index] = gets.strip 
  puts @contacts
end

def delete_contacts
  puts "What contact would you like to delete?"
  print ">"
  @contacts.delete_at(gets.to_i - 1)
  show_contacts
end  

def exit_to_main_menu
abort
end

main_menu

