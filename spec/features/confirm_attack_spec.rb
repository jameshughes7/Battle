RSpec.feature 'Confirm Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Marcus attacked James'
  end

  scenario 'reduce Player2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'James:60HP'
    expect(page).to have_content 'James:50HP'
  end
end




# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
