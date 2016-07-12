require_relative 'base_class_for_data_classes'

class Analytic < BaseClassForDataClasses
  attr_accessor :kind,
                :stories_accepted,
                :bugs_created,
                :cycle_time,
                :rejection_rate

  def initialize(values = {})
    super(values)
  end

end
