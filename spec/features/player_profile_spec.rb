RSpec.feature 'Players to update their profiles ' do
  scenario 'Fill in name form with John' do
    visit('/')
    fill_in :Player1, with: 'Marcus'
    fill_in :Player2, with: 'James'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Marcus vs James'
  end
end
