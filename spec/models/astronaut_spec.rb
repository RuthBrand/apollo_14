require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Statistics' do
    before(:each) do
      @astronaut_1 = Astronaut.create(name: "John", age: 25, job: "engineer")
      @astronaut_2 = Astronaut.create(name: "Ruth", age: 38, job: "pilot")
      @astronaut_3 = Astronaut.create(name: "Bill", age: 41, job: "doctor")
    end

    it 'should have average stats for all astronauts'do

    expect(Astronaut.average_age).to eq(34)
  end
end
end
