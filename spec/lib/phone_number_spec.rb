require 'spec_helper'

RSpec.describe PhoneNumberTranslator::PhoneNumber do
  subject { described_class.new(word) }

  describe '#to_s' do
    context 'when the given word is "beer"' do
      let(:word) { 'beer' }

      it 'it returns "beer" as an output' do
        expect(subject.to_s).to eq 'beer'
      end

      it 'is an instance of String' do
        expect(subject.to_s).to be_an_instance_of(String)
      end
    end
  end

  describe '#to_i' do
    context 'when the given word is "beer"' do
      let(:word) { 'beer' }

      it 'returns 2337' do
        expect(subject.to_i).to eq 2337
      end

      it 'is kind of Numeric' do
        expect(subject.to_i).to be_kind_of(Numeric)
      end
    end
  end
end
