# Contact class

class Contact
  attr_accessor :first_name, :last_name, :email, :notes, :id

  def initialize(frst_nm, lst_nm, eml, nts)
    @first_name = frst_nm
    @last_name = lst_nm
    @email = eml
    @notes = nts
    @id = nil
  end

  def display
    "First name: #{@first_name}<br>Last name: #{@last_name}</br>Email: #{@email}<br>Notes: #{@notes}</br>I.D.: #{@id}"
  end

end


#Below is a test area to be remove when program is complete:

# test_contact = Contact.new("Bruce", "Banner", "banner.b@hulk.com", "Turns green with anger not envy")
# puts test_contact.display

# test_contact.id = 1001

# puts test_contact.display