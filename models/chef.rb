class Chef < MiniActiveRecord::Model
  self.attribute_names = [:id, :first_name, :last_name, :email, :phone,
                          :birthday, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes
  # We say a record is "new" if it doesn't have a defined primary key in its
  # attributes
  def meals
    Meal.where('chef_id = ?', self[:id])
  end

  def add_meals(meals)
    meals.each do |meal|
      meal.chef = self
    end
    meals
  end


  
end
