RSpec.describe Special do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :run_time}

  end

  describe 'relationships' do
    it {should belong_to :comedian}
  end
end
