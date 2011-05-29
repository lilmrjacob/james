# encoding: utf-8
#
require 'test/unit'

require File.expand_path '../../../../../lib/james/dialog_api', __FILE__
require File.expand_path '../../../../../lib/james/dialog_internals', __FILE__
require File.expand_path '../../../../../lib/james/builtin/core_dialog', __FILE__
require File.expand_path '../../../../../lib/james/visitors', __FILE__
require File.expand_path '../../../../../lib/james/visitor', __FILE__
require File.expand_path '../../../../../lib/james/state_api', __FILE__
require File.expand_path '../../../../../lib/james/dialogs', __FILE__
require File.expand_path '../../../../../lib/james/inputs/base', __FILE__
require File.expand_path '../../../../../lib/james/inputs/terminal', __FILE__
require File.expand_path '../../../../../lib/james/inputs/audio', __FILE__
require File.expand_path '../../../../../lib/james/controller', __FILE__

class James::Controller::Test < Test::Unit::TestCase

  attr_reader :controller

  def setup
    @controller = James::Controller.new
  end

  describe 'listening?' do
    it 'is correct' do
      controller.listening?.should == false
    end
  end
  describe 'expects' do
    it 'delegates' do
      visitor = stub! :visitor
      controller.stub! :visitor => visitor

      visitor.should_receive(:expects).once.with()

      controller.expects
    end
  end

end