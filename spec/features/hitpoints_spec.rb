RSpec.feature "View Hitpoints" do
  scenario "see player 2 hitpoints" do
    sign_in_and_play
    # visit ('/')
    # fill_in :player1, with: 'Marcus'
    # fill_in :player2, with: 'James'
    # click_button 'Submit'
    # save_and_open_page
    expect(page).to have_content 'James:60HP'
  end
end
