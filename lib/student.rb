class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    self.send("location=", student_hash[:location])
    self.send("profile_url=", student_hash[:profile_url])
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student_hash|
      Student.new(student_hash)
    end
  end

  def add_student_attributes(attributes_hash) # Scraper.scrape_profile_page hash
    # uses the Scraper class to get a hash of a given students attributes and uses that hash to set additional attributes for that student
    # iterate over hash, meta-program to dynamically assign student attrs and values, per the key/value pairs
    # use send, use self
    self.send("bio=", attributes_hash[:bio])
    self.send("twitter=", attributes_hash[:twitter])    
    self.send("linkedin=", attributes_hash[:linkedin])
    self.send("github=", attributes_hash[:github])    
    self.send("blog=", attributes_hash[:blog])    
    self.send("profile_quote=", attributes_hash[:profile_quote])
  end

  def self.all
    @@all
  end
end

