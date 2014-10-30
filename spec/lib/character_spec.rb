require 'spec_helper'
require 'character'

describe Character do
  it { should respond_to(:career) }
  it { should respond_to(:gender) }

  describe '#age' do
    context 'when terms are not set' do
      it 'returns the default age' do
        # expect(subject.age).to eql Character::DEFAULT_AGE
        subject.age.should == Character::DEFAULT_AGE
      end
    end

    context 'when terms are set' do
      let(:terms) { 4 }

      before { subject.terms = terms }

      it 'calculates age based on terms' do
        # expect(subject.age).to eql 34
        subject.age.should == 34
      end
    end
  end

  describe '#terms' do
    context 'when not set' do
      it 'returns 0' do
        # expect(subject.terms).to eql 0
        subject.terms.should == 0
      end
    end
  end

  describe '#upp' do
    context 'when set_upp has not been called' do
      it 'returns an empty string' do
        # expect(subject.upp).to eql ''
        subject.upp.should == ''
      end
    end

    context 'when set_upp has been called' do
      before (:all) do
        subject.set_stat('Str', '5')
        subject.set_stat('Dex', '6')
        subject.set_stat('End', '7')
        subject.set_stat('Int', '8')
        subject.set_stat('Edu', '9')
        subject.set_stat('Soc', 'A')
        #subject.set_upp
      end
      it 'returns a partucular 6 character string' do
        subject.upp.should == '56789A'
      end 
      it 'returns a 5 character string' do
        subject.upp.length.should == 6
      end
    end
  end


end
