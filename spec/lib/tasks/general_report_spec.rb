# frozen_string_literal: true

require_relative '../../../lib/index_checker/task_definition/general_report'

describe IndexChecker::TaskDefinition::GeneralReport do
  it 'run general_report successful' do
    IndexChecker.config do |c|
      c.rdbms = 'postgres'
      c.user = 'postgres'
    end

    expect(described_class.generate!).to be_a Process::Waiter
  end
end
