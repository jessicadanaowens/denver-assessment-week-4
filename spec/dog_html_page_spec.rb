require 'dogs'
require "spec_helper"

describe DogHTMLPage do
  describe "#title" do
    it "returns how many dogs in an h1 when there are 4 dogs" do
      dog_html_page = DogHTMLPage.new([{:name => "Harleigh"},
                                       {:name => "Mali"},
                                       {:name => "Puff"},
                                       {:name => "Fido"}])

      title_html = dog_html_page.title

      expect(title_html).to eq("<h1>There are 4 dogs</h1>")
    end

    it "returns how many dogs in an h1 when there are 2 dogs" do
      dog_html_page = DogHTMLPage.new([{:name => "Harleigh"},
                                       {:name => "Fido"}])

      title_html = dog_html_page.title

      expect(title_html).to eq("<h1>There are 2 dogs</h1>")
    end


    it "returns no dogs if there are no dogs given" do
      dog_html_page = DogHTMLPage.new([])

      title_html = dog_html_page.title

      expect(title_html).to eq("<h1>There are no dogs</h1>")
    end
  end

  describe "#list" do
    it "returns a list of the dog names in the order given" do
      dog_html_page = DogHTMLPage.new([{:name => "Harleigh"},
                                       {:name => "Mali"},
                                       {:name => "Puff"},
                                       {:name => "Fido"}])

      list_html = dog_html_page.list

      expect(list_html).to eq("<ul><li>Harleigh</li><li>Mali</li><li>Puff</li><li>Fido</li></ul>")
    end

    it "returns nothing if there are no dogs" do
      dog_html_page = DogHTMLPage.new([])

      list_html = dog_html_page.list

      expect(list_html).to eq("")
    end
  end
end
