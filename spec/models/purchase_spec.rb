require 'spec_helper'

describe Purchase do

  it { should validate_presence_of :customer_id }
  it { should validate_presence_of :artwork_id }
  it { should validate_presence_of :sales_date }

  it { should belong_to :customer }
  it { should belong_to :artwork }

end
