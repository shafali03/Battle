feature "attack" do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Shaf attacks Ellis!"
    expect(page).not_to have_content "Ellis: 60HP"
    expect(page).to have_content "Ellis: 50HP"
  end
end
