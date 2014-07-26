require "rspec"
require_relative "../lib/SplitHash.rb"

describe "SplitHash" do

  it "test_splitHashByCAndE" do
    split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :c, :e ).should eq([ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ])
    end

  it "test_splitHashByBAndF" do
    split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, :b, :f ).should eq([ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ])
  end

  it "test_splitHashByD" do
    split_hash_by_key( { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }, 'd' ).should eq([ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ])
  end

  it "test_splitHashByAAndB" do
    split_hash_by_key( {:a => 1, :b => 2}, :a ).should eq([ {:a => 1, :b => 2} ])
  end

  it "test_splitHashByB" do
    split_hash_by_key( { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }, 'b' ).should eq(nil)
  end

end