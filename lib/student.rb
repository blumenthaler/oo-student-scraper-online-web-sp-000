class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    self.send("location=", student_hash[:location])
    @@all << self
  end

  def self.create_from_collection(students_array)
    # uses the Scraper class to create new students with the correct name and location
    # iterate over hash
  end

  def add_student_attributes(attributes_hash)
    # uses the Scraper class to get a hash of a given students attributes and uses that hash to set additional attributes for that student
  end

  def self.all
    @@all
  end
end

