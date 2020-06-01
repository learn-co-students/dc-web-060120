instructors = [
    {name: "Paul", role: "lead"},
    {name: "Ann", role: "lead"},
    {name: "Maddie", role: "coach"},
    {name: "Chine", role: "Coach"},
    {name: "Shannon", role: "coach"},
    {name: "Su", role: "CD"}
]

# each

all_names = []
instructors.each do |instructor| # block variable
    all_names.push(instructor[:name])
end

# print all_names

# map / collect
# takes return value of each element's block and puts in new array
# return an array equal in size to the original 

mapped_names = instructors.map do |instructor|
    instructor[:name].upcase
end

# print mapped_names

# def puts(input) 
#     print input 
#     print "\n"
#     return nil
# end

# find / detect

paul = ""

instructors.each do |instructor|
    if instructor[:name] == "Paul"
        paul = instructor
    end
end

# print paul
paul = instructors.find do |instructor|
    instructor[:name] == "Paul"
end


paul = instructors.find {|instructor| instructor[:name] == "Paul"}

# puts paul




# select / find_all
coaches = instructors.select do |instructor|
    instructor[:role].downcase == "coach"
end

# print coaches

cd = instructors.select do |instructor|
    instructor[:role] == "CD"
end

print cd