# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  
  # initializes attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Running the predicted deaths method and speed of spread method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Taking in infomation form hash and calculating the number of deaths that will occur in said state
  def predicted_deaths
    # predicted deaths is solely based on population density
   number_of_deaths = if @population_density >= 200
      (@population * 0.4)
    elsif @population_density >= 150
      (@population * 0.3)
    elsif @population_density >= 100
      (@population * 0.2)
    elsif @population_density >= 50
      (@population * 0.1)
    else
      (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
  
  # Taking in population density and calulating how many months it will take to spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed += if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population|
  location = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  location.virus_effects
end


#=======================================================================
# Reflection Section