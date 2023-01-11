# frozen_string_literal: true

# location: spec/feature/session_integration_spec.rb
# require 'rails_helper'

# RSpec.describe 'Signing up with Form', type: :system do
#  before do
#    member = FactoryBot.create(:member)
#    # member.confirmed_at = Time.now
#    sign_in member
#  end

#  scenario 'homepage' do
#    visit root_path
#    expect(response).not_to have_http_status(:redirect)
#  end

#  scenario 'Logging out', type: :system do
#    visit root_path
#    click_button "Logout"
#    #Should redirect to login page
#    expect(page).to have_current_path(new_member_session_path)
#  end
# end

# RSpec.describe 'Signing in with Form', type: :system do
#  before do
#    @member1 = create :member
#    visit new_member_registration_path
#  end

#  scenario 'valid with correct credentials' do
#    visit new_whitelist_path
#	fill_in 'Email', with: @member1.email
#    click_on 'Create Whitelist'
#    visit new_member_session_path
#    fill_in 'member_email', with: @member1.email
#    fill_in 'member_password', with: @member1.password
#    click_button 'LOGIN'
#    visit root_path
#    expect(page).to have_text @member1.email
#  end
# end
