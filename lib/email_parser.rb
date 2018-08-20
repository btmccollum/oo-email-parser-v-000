# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

attr_accessor :emails

@@email_list = []

def self.create(emails)
  new_list = self.new
  new_list.save
  new_list
end

def self.all
  @@email_list
end

def save
  self.class.all << self
end

end
binding.pry
