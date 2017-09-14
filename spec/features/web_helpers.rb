def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Marcus'
  fill_in :player2, with: 'James'
  click_button 'Submit'
end
