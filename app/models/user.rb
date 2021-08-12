# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :integer
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  def user_name
    return self.first_name.capitalize+" "+self.last_name.capitalize
  end
  
end
