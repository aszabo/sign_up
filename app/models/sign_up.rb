class SignUp < ActiveRecord::Base
   validates_presence_of :e_mail, :message => 'keine adresse angegeben'
   validates_format_of :e_mail, :with => /[0-9A-Za-z]+@[0-9A-Za-z]+[\.a-z]/, :message =>'falsche E-Mail angaben.'
   validates_uniqueness_of :e_mail
   
end
