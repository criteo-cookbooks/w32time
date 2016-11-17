# This file is auto-generated by the code_generator (one-time action)
#
# Cookbook Name:: w32time
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'w32time::default' do
  context 'When all attributes are default, on windows 6.3.9600' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(
        platform: 'windows',
        version:  '2012R2'
      )
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end