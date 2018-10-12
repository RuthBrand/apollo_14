require 'rails_helper'

RSpec.describe 'as a visitor' do
 describe 'when i visit astronauts' do

 before(:each) do
   @astronaut_1 = Astronaut.create(name: "John", age: 25, job: "engineer")
   @astronaut_2 = Astronaut.create(name: "Ruth", age: 38, job: "pilot")
   @astronaut_3 = Astronaut.create(name: "Bill", age: 41, job: "doctor")
 end

 it 'i should see astronaut stats' do

   visit '/astronauts'

   expect(page).to have_content(@astronaut_1.name)
   expect(page).to have_content(@astronaut_2.age)
   expect(page).to have_content(@astronaut_3.job)
  end
 end
end
