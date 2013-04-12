# == Schema Information
#
# Table name: policies
#
#  id               :integer          not null, primary key
#  pnum             :string(255)
#  ptype            :string(255)
#  depositedate     :datetime
#  duedate          :datetime
#  personinsured    :string(255)
#  premium          :string(255)
#  insurancecompany :string(255)
#  sumassured       :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  client_id        :string(255)
#

class Policy < ActiveRecord::Base
  attr_accessible :depositedate, :duedate, :insurancecompany, :personinsured, :pnum, :premium, :ptype, :sumassured, :client_id
  
  belongs_to :client
  
  
  
  
end
