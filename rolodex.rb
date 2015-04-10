# Rolodex class

class Rolodex
  attr_reader :contacts

  def initialize
    @contacts = []
    @contact_id = 1000
  end

  def add_contact(new_cont)
    @contact_id += 1 #first contact ID is not 1000, but 1001
    new_cont.id = @contact_id
    @contacts << new_cont
  end

  def modify_contact(id, attribute_val)
    person = find_particular_contact(id)
    if person
      person.first_name = attribute_val[:first_name]
      person.last_name = attribute_val[:last_name]
      person.email = attribute_val[:email]
      person.notes = attribute_val[:notes]
      return true
    else
      return nil
    end
  end

  def display_all_contacts
    return "There are no contacts" if @contacts.empty?
    @contacts.each do |item|
      "First name: #{item.first_name}<br>Last name: #{item.last_name}</br>Email: #{item.email}<br>Notes: #{item.notes}</br>I.D.: #{item.id}"
    end
  end

  def find_particular_contact(id)
    @contacts.each do |person|
      return person if person.id == id
    end
    return nil
  end

  def display_info_by_attribute(type, attribute_val)
    if type == 1
      @contacts.each do |people|
        puts people.display if people.first_name == attribute_val
      end
    elsif type == 2
      @contacts.each do |people|
        puts people.display if people.last_name == attribute_val
      end
    elsif type == 3
      @contacts.each do |people|
        puts people.display if people.email == attribute_val
      end
    elsif type == 4
      @contacts.each do |people|
        puts people.display if people.notes == attribute_val
      end
    end
  end

  # delete contact based on contact id
  def delete_contact(id)
    person = find_particular_contact(id)
    if person
      @contacts.delete(person)
      return true
    else
      return nil
    end
  end

end


#Below is a test area to be remove when program is complete:

# test_rolodex = Rolodex.new
# test_rolodex.add_contact(0)


