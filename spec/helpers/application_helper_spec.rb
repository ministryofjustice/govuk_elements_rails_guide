require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CasesHelper. For example:
#
# describe CasesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe '#embedded_svg' do
    it 'outputs svg' do

      expect(helper.embedded_svg('svg/logo').size > 0).to eq true


    end
  end
end
