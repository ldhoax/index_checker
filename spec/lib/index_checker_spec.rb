# frozen_string_literal: true

require_relative '../spec_helper'

describe IndexChecker do
  it 'is possible to provide config options' do
    described_class.config do |c|
      expect(c).to eq(described_class)
    end
  end

  describe 'parameters' do
    let(:fake_class) { class_double(described_class) }

    it 'is possible to set rdbms' do
      expect(fake_class).to receive(:rdbms=).with('postgres')
      fake_class.rdbms = 'postgres'
    end

    it 'is possible to set dbname' do
      expect(fake_class).to receive(:dbname=).with('a_random_dbname')
      fake_class.dbname = 'a_random_dbname'
    end

    it 'is possible to set user' do
      expect(fake_class).to receive(:user=).with('postgres_user')
      fake_class.user = 'postgres_user'
    end
    
    it 'is possible to set password' do
      expect(fake_class).to receive(:password=).with('a_secret_password')
      fake_class.password = 'a_secret_password'
    end
  end
end
