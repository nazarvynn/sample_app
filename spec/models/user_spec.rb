# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do

  before { @user = User.new(:name => "Example User", :email => "user@example.com") }

  subject { @user }

  it { should respont_to(:name) }
  it { should respont_to(:email) }
end
