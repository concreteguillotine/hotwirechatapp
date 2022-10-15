require "rails_helper"

RSpec.feature "Users can visit other users profile, then send messages" do
    let!(:user1) { FactoryBot.create(:user, username: "user1") }
    let!(:user2) { FactoryBot.create(:user, username: "user2") }
    let!(:user3) { FactoryBot.create(:user, username: "user3") }

    before do
        login_as(user1)
        visit users_path
    end

    scenario "visiting another users' profile" do
        click_link "user2"
        expect(page).to have_content "user2"
        expect(page).to have_content "Start a conversation"
    end
end

