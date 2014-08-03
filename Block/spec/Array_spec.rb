require 'rspec'
require_relative '../lib/Array.rb'

describe 'Array' do

  it 'should do group_by' do
    a=%w(chenxiao chenmin chensiheng xiaochen liyulong)
    a.group_by1{|item| item.index("chen") != nil}.should eq([false=>["liyulong"], true=>["chenxiao", "chenmin", "chensiheng", "xiaochen"]])
  end

  it 'should do inject' do
    (5..10).to_a.inject1 { |sum, n| sum + n }.should eq(45)
  end
end