class FriendError < StandardError
  def message 
    "you must give the hangout method an argument of an instance of the person class!"
  end
end

class Person
  attr_accessor :name, :age, :location, :status, :friend

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

  def hangout(person)
    if person.class != Person
      begin
        raise FriendError
      rescue FriendError => error
        error.message
      end
    else
      self.friend = person
      # person.name
    end
  end
end


first_person_attributes = {name: "Hal Hope"}
fp = Person.new(first_person_attributes)

person_attributes = {name: "Bob Cobb", location: "Boston", age: 34, status: true}
p = Person.new(person_attributes)
p p.location
p p.hangout("Bill")
p p.hangout(fp)
p p.friend.name