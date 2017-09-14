RSpec.feature 'Attacking' do
  scenario 'attack Player2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Marcus attacked James'
  end
end


# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
