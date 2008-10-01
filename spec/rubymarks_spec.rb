require File.dirname(__FILE__) + '/spec_helper.rb'

describe Rubymarks do
  include Rubymarks

  describe "creating links for Facebook" do
    it "should create link including URL" do
      bookmark(:facebook, 'http://www.google.com').should == "<a href='http://www.facebook.com/share.php?u=http://www.google.com'>Facebook</a>"
    end
    it "should not add title" do
      bookmark(:facebook, 'http://www.google.com', :title => "Google").should == "<a href='http://www.facebook.com/share.php?u=http://www.google.com'>Facebook</a>"
    end
    it "should not add text" do
      bookmark(:facebook, 'http://www.google.com', :text => "Search Engine").should == "<a href='http://www.facebook.com/share.php?u=http://www.google.com'>Facebook</a>"
    end
  end

  describe "creating links for MySpace" do
    it "should create link including URL" do
      bookmark(:myspace, 'http://www.google.com').should == "<a href='http://www.myspace.com/index.cfm?fuseaction=postto&l=1&u=http://www.google.com'>MySpace</a>"
    end
    it "should add title parameter" do
      bookmark(:myspace, 'http://www.google.com', :title => "Google").should == "<a href='http://www.myspace.com/index.cfm?fuseaction=postto&l=1&u=http://www.google.com&t=Google'>MySpace</a>"
    end
    it "should add text parameter" do
      bookmark(:myspace, 'http://www.google.com', :text => "Search Engine").should == "<a href='http://www.myspace.com/index.cfm?fuseaction=postto&l=1&u=http://www.google.com&c=Search%20Engine'>MySpace</a>"
    end
  end

end