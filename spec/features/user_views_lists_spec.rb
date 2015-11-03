require "rails_helper"

feature "User views all lists" do
  scenario "successfully" do
    create(:list, title: "Best Sci Fi")
    create(:list, title: "Based on a true story")

    visit lists_path

    expect(page).to have_content("Best Sci Fi")
    expect(page).to have_content("Based on a true story")
  end
end
