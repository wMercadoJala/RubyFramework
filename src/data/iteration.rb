require_relative 'base_class_for_data_classes'

class Iteration < BaseClassForDataClasses
  attr_accessor :number,
                :project_id,
                :length,
                :team_strength,
                :stories,
                :start,
                :finish,
                :kind

  def initialize(values = {})
    super(values)
  end

end
