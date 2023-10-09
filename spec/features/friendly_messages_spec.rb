# frozen_string_literal: true

describe 'Friendly message' do
  let(:message) { "You're might fine!" }

  before { create(:message, content: message) }

  it 'displays a friendly message' do
    visit '/'
    expect(page).to have_content(message)
  end
end
