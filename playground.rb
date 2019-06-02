users = [
    {username: "ix", password:"1234"},
    {username: "tom", password:"1234"},
    {username: "tony", password:"1234"},
    {username: "jared", password:"1234"},
    {username: "jinnie", password:"1234"},
]
def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    # no need for a return here the last retrun is implied 
     "credentials were not correct"
end
puts "welcome to authenticator"
 25.times {print "-"}

 puts 
 puts "This program will take input from the user and compare password"
 puts "If password is correct, you get back the user object"

 attempts = 1;
 while attempts < 4
    print "username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp.downcase 

    authentication = auth_user(username,password, users)
    puts authentication
    puts "press n to quite or any other key to continue:"
    input = gets.chomp.downcase
    attempts += 1
    if input == "n"
        break
    end
    attempts += 1
 end 
 puts "You have exceeded the number of attempts"  if attempts = 4