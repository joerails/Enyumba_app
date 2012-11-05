require 'spec_helper'

describe "Client pages" do

  subject { page }

  describe "logup page" do
    before { visit logup_path }

    it { should have_selector('h1',    text: 'log up') }
    it { should have_selector('title', text: full_title('log up')) }
  end
end