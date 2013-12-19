require 'spec_helper'

describe Style do

  it { should validate_presence_of :name }

  it { should have_many :artists }

end
