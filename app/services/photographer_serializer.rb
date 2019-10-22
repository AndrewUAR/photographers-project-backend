class PhotographerSerializer
  def initialize(photographer_object)
    @photographer = photographer_object
  end

  def to_serialized_json
    @photographer.to_json(:include => {
      :pictures => {:only => [:id, :name, :description]},
      :albums => {:only => [:id, :name, :description]}
    }, :except => [:updated_at, :created_at])
  end

end
