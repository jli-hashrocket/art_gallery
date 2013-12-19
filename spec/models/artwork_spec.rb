require 'spec_helper'

describe Artwork do

  it { should validate_presence_of :artist_id }
  it { should validate_presence_of :artwork_type_id }
  it { should validate_presence_of :available }
  it { should validate_presence_of :sold }

  it { should belong_to :artist }
  it { should belong_to :collection }
  it { should belong_to :artwork_type }
  it{ should have_one :purchase }

end
