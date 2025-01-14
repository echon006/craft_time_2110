require './lib/person'

RSpec.describe Person do
  before :each do
    @person = Person.new({
      name: 'Hector',
      interests: ['sewing', 'millinery', 'drawing']
      })
  end

  it "exists" do
    expect(@person).to be_a(Person)
  end

  it "checks the atributes " do
    expect(@person.name).to eq('Hector')
    expect(@person.interests).to eq(['sewing', 'millinery', 'drawing'])
    expect(@person.supplies).to eq({})
  end

  it "checks that supplies were added to the person" do
    @person.add_supply("fabric" => 4)
    @person.add_supply('scissors' => 1)
    expect(@person.supplies).to eq({"fabric"=>4, "scissors"=>1})
  end

  xit "checks that adding supplies does not change the value but adds to it " do
    @person.add_supply("fabric" => 4)
    @person.add_supply('scissors' => 1)
    @person.add_supply('fabric'=> 3)
    expect(@person.supplies).to eq({"fabric"=>7, "scissors"=>1})
  end

end
