# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end
  
  def parse
    parse_array = []
    emails = @string.split(/,*\s+/)
      emails.each do |e|
      if parse_array == nil
        parse_array << e
      else
        if parse_array.include?(e) == false
          parse_array << e
        end
        parse_array
      end
    end
  end
  
end