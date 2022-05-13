require "diary_entry"
RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  it "returns the number of words in the contents as an integer" do
    diary_entry = DiaryEntry.new("my_title", "This is an example of contents")
    expect(diary_entry.count_words).to eq 6 
  end

  context "given an exmaple of wpm of 200" do
    it "returns an integer for an estimate of  reading time in minutes" do
      diary_entry = DiaryEntry.new("my_title", "one " * 500) 
      expect(diary_entry.reading_time(200)). to eq 3
    end
  end


end
   

