require 'rails_helper'

RSpec.describe Section do
  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
  end

  describe '#contents' do
    it 'returns an array of structs with the title, content of children nodes' do
      # require 'pry'; binding.pry
      newsletter = FactoryBot.create(:newsletter)
      weekly_announcements = Section.create!(title: 'Weekly Announcements', newsletter: newsletter)
      bible_reading = weekly_announcements.children.create!(
                        title: 'Bible Reading',
                        content: 'Luke 12:27 - 11:59',
                        newsletter: newsletter)
      hwmr = weekly_announcements.children.create!(
               title: 'The Holy Word for Morning Revival',
               content: 'The Will of God, Wk. 8',
               newsletter: newsletter)

      sub_1 = { title: bible_reading.title, content: bible_reading.content }
      sub_2 = { title: hwmr.title, content: hwmr.content }

      expect(weekly_announcements.contents).to eq([sub_1, sub_2])
    end
  end
end
