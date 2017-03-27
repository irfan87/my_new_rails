require 'rails_helper'

feature "visiting the homepage" do
	scenario "the visitor sees welcome page" do
		visit root_path
		expect(page).to have_text("Welcome to my app!")
	end

	scenario "the visitor sees Steve Quote", js: true do
		visit root_path
		expect(page).not_to have_errors
		click_button "Steve Quote"

		within(".modal-text") do
			expect(page).to have_text("Hi!")
		end

		click_link "Close"
		expect(page).not_to have_text("Hi!")
	end
end