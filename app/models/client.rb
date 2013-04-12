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

class Client < ActiveRecord::Base
  attr_accessible :address, :city, :companyorindividual, :contperson, :landlinephone, :mobilenumber, :state , :email
  
  belongs_to :admin
  has_many :policies, :dependent => :destroy 
  
  
  
  
  
  
 end
