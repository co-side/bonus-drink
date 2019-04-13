require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify '引数が0の場合は0を返すこと' do
    expect(BonusDrink.total_count_for(0)).to eq 0
  end
  specify '引数が1の場合は1を返すこと' do
    expect(BonusDrink.total_count_for(1)).to eq 1
  end
  specify '引数が3の場合は4を返すこと' do
    expect(BonusDrink.total_count_for(3)).to eq 4
  end
  specify '引数が11の場合は16を返すこと' do
    expect(BonusDrink.total_count_for(11)).to eq 16
  end
  specify '引数が100の場合は149を返すこと' do
    expect(BonusDrink.total_count_for(100)).to eq 149
  end
  specify '引数が0もしくは正の整数以外の場合は「引数は0または正の整数を与えてください」と返すこと' do
    expect(BonusDrink.total_count_for('test')).to eq '引数は0または正の整数を与えてください'
  end
  specify '引数が0もしくは正の整数の場合は、数値型でも文字列型でも同じ計算結果をかえすこと' do
    expect(BonusDrink.total_count_for('100')).to eq BonusDrink.total_count_for(100)
  end
end
