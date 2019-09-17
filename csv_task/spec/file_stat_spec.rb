
describe StatGetter, 'get_max' do
    it 'returns 20 if init with file_spec.csv' do
        expect(StatGetter.new('spec/file_spec.csv').get_max).to eq 20
    end
end

describe StatGetter, 'get_min' do
    it 'returns 20 if init with file_spec.csv' do
        expect(StatGetter.new('spec/file_spec.csv').get_min).to eq 10
    end
end

describe StatGetter, 'get_min' do
    it 'returns 15 if init with file_spec.csv' do
        expect(StatGetter.new('spec/file_spec.csv').get_average).to eq 15
    end
end