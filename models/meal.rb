class Meal < MiniActiveRecord::Model
  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes


  def chef
    Chef.where('id = ?', self[:chef_id])
  end

  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save

    chef
  end

end
