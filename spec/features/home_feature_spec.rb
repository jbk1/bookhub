require "rails_helper"

describe "home page" do

    context "main header" do

        it "is shown on screen" do
            visit "/"
            expect(page).to have_content "BookHub"
        end
    end

    context "page sub header" do

        it "is shown on screen" do
            visit "/"
            expect(page).to have_content "Book Search"
        end
    end

end