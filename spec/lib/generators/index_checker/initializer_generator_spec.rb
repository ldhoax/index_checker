# frozen_string_literal: true

require_relative '../../../../lib/generators/index_checker/initializer_generator'

describe IndexChecker::Generators::InitializerGenerator do
  before :all do
    remove_config_file
    remove_report_file
  end

  after :all do
    remove_config_file
    remove_report_file
    add_config
  end

  it 'initializes config file properly' do
    described_class.start

    expect(File.file?(config_file)).to be true
  end

  it 'create index_checker folder properly' do
    described_class.start

    expect(File.file?(report_file)).to be true
  end
end
