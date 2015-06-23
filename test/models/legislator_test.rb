require 'test_helper'

class LegislatorTest < ActiveSupport::TestCase
  test 'it finds legislators by zipcode' do
    VCR.use_cassette("legislator#find_by_zipcode") do
      results = Legislator.find_by(zipcode: '80202')

      assert_equal 3,         results.count
      assert_equal 'Cory',    results.first.first_name
      assert_equal 'Gardner', results.first.last_name
    end
  end
end
