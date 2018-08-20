# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

attr_accessor :emails, :email_list

@@email_list = []

def initialize(emails)
  email_list = emails
  email_list.save
  email_list
end

# def self.create(emails)
#   email_list = self.new(emails)
#   email_list.save
#   email_list
# end

def self.parse
  @@email_list.split(/[\s,]/)
end

def self.all
  @@email_list
end

def save
  self.class.all << self
end

end
