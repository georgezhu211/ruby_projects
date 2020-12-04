require './lib/caesar_cipher'

describe "#caesar_cipher" do
  it "shifts a single character" do
    expect(caesar_cipher('a',2)).to eql('c')
  end

  it "shifts a multiple characters" do
    expect(caesar_cipher('hello',3)).to eql('khoor')
  end

  it "ignores spaces and special characters" do
    expect(caesar_cipher('What a string!',5)).to eql('Bmfy f xywnsl!')
  end

  it "it wraps from z to a" do
    expect(caesar_cipher('zzz',1)).to eql('aaa')
  end

  it "keeps the same case" do
    expect(caesar_cipher('Za WaRuDo',5)).to eql('Ef BfWzIt')
  end
end