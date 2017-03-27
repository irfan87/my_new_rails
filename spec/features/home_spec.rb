require 'rails_helper'

feature "visiting the homepage" do
	scenario "the visitor sees welcome page" do
		visit root_path
		expect(page).to have_text("Welcome to my app!")
	end
end