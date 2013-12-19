require 'spec_helper'

describe Customer do

  it { should validate_presence_of :email }

  it { should have_many(:favorite_collections).dependent(:destroy) }
  it { should have_many :purchases }

end
