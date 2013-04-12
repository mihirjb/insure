# == Schema Information
#
# Table name: clients
#
#  id                  :integer          not null, primary key
#  companyorindividual :string(255)
#  address             :string(255)
#  city                :string(255)
#  state               :string(255)
#  landlinephone       :integer
#  mobilenumber        :integer
#  contperson          :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  admin_id            :integer
#  email               :string(255)
#

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
