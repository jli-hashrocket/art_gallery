require 'spec_helper'

describe ArtworkType do

  it { should validate_presence_of :name }

  it { should have_many :artworks }

end
