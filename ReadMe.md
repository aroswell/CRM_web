#CRM - Customer Relations Management App

###User Stories

Software developers use User Stories as a guide to know what to implement. They serve as a list of things that the customer thinks should be in an application. Below we have written out all of the user stories for the CRM. Use these as a to-do list or guide when implementing your solution.

*Implement the Runner*

As a user, I am presented with a prompt to 'add', 'modify', 'display all', 'display contact', display attribute', 'delete' and 'exit'.
As a user, if 'add' is selected, I am prompted to give my 'first name', 'last name', 'email' and 'notes'.
As a user, if 'modify' is selected, I am prompted to enter an id for the contact to be modified.
As a user, when an id is entered, I am prompted to type 'yes' or 'no' to confirm my selection.
As a user, if 'yes' is typed, I am prompted to change 'firstname', 'lastname', 'email' or 'notes' by number. You shouldn't be able to change the 'id'.
As a user, when an attribute is entered, I am prompted to enter a new value for the attribute.
As a user, if 'no' is entered, I am returned back to the main menu.
As a user, if 'display all' is selected, I am shown all of the contacts that exist with their 'id's.
As a user, if 'display contact' is selected, I am prompted to enter an 'id' and then shown the corresponding contact.
As a user, if 'display attribute' is selected, I am prompted to enter an attribute ('firstname', 'lastname', 'email', or 'notes') so that I can see all of the contacts according to that attribute.
As a user, if 'delete' is selected, I am prompted to enter the 'id' of the contact to be deleted.
As a user, if 'exit' is selected, I am exited out of the program and returned to the command line.
Implement the Contact Class

As a developer, the contact class should have five attributes: id, first_name, last_name, email and notes.
As a developer, when a user creates a contact, all five attributes are mandatory.
As a developer, I am able to modify those attributes at any point in the program at a later time.
As a developer, the Contact class should also have a method that displays all of its values.
Implement the Rolodex Class

As a developer, I should implement the Rolodex class as an array that accepts new contacts.
As a developer, the rolodex class should have the following methods: add, modify_contact, display_all_contacts, display_particular_contact, display_info_by_attribute and delete_contact.

**Styling is a work in progress**

Playing around with CSS ...
