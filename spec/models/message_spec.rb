# frozen_string_literal: true

# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  content    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Message do
  describe 'validations' do
    it 'is valid with content' do
      expect(build(:message)).to be_valid
    end

    it 'is not valid when content is blank' do
      message = build(:message, content: '')
      expect(message).not_to be_valid
      expect(message.errors.details[:content]).to include(error: :blank)
    end
  end
end
