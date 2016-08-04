require 'object_slicer'

describe ObjectSlicer do
  context 'Object does not have `slice` method.' do
    subject { Object.new.slice(:class, :inspect) }

    it { is_expected.to match(class: eq(Object), inspect: match('#<Object:')) }
  end

  context 'Objcet has `slice` method.' do
    subject { (1..10).to_a.slice(1,2) }

    it { is_expected.to eq [2,3] }
  end
end
