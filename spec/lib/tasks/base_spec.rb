# frozen_string_literal: true

require_relative '../../../lib/index_checker/task_definition/base'
# require 'index_checker'

describe IndexChecker::TaskDefinition::Base do
  it 'successful connect to PG' do
    IndexChecker.config do |c|
      c.rdbms = 'postgres'
      c.user = 'postgres'
    end

    expect(described_class.postgres_connection).not_to be_nil
  end

  it 'failed to connect to PG' do
    IndexChecker.config do |c|
      c.rdbms = 'postgres'
      c.user = 'an_invalid_username'
    end

    expect(described_class.postgres_connection).to be_nil
  end

  it 'has the correct template file path' do
    templat_path = described_class.result_template_path
    expect(File.file?(templat_path)).to be true
  end

  it 'has the correct result file path' do
    result_path = described_class.result_file_path

    expect(File.file?(result_path)).to be true
  end
end
