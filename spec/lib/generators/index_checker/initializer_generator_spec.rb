# frozen_string_literal: true

require_relative '../../../../lib/generators/index_checker/initializer_generator'

describe IndexChecker::Generators::InitializerGenerator do
  before :all do
    remove_config_file
  end

  after :all do
    remove_config_file
    add_config
  end

  it 'initializes config file properly' do
    described_class.start

    expect(File.file?(config_file)).to be true
  end
end
