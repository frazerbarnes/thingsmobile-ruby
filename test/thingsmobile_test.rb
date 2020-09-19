require "test_helper"

class ThingsmobileTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Thingsmobile::VERSION
  end

  def test_list_sim_cards
    puts('TEST: Get all sim cards')

    tm = ThingsMobile::Base.new(ENV['TM_API_USER'], ENV['TM_API_TOKEN'])

    tm.sims.all.each do |sim|
      puts('SIM:')
      puts(sim.iccid)
    end

    assert true
  end

end
