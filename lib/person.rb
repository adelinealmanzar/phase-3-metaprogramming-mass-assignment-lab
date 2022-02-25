class Person
  def initialize(args)
    args.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

# hash = {
#   :name,
#   :birthday,
#   :hair_color,
#   :eye_color,
#   :height,
#   :weight,
#   :handed,
#   :complexion,
#   :t_shirt_size,
#   :wrist_size,
#   :glove_size,
#   :pant_length,
#   :pant_width
# }
# p1 = Person.new(hash)