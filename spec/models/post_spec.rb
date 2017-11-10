require 'rails_helper'

RSpec.describe Post, type: :model do
	describe '.search' do
		
		before(:each) do
			@posts = []
			3.times do
				@posts << FactoryBot.create(:post, name: Faker::Name.name) 
			end
		end

		let(:post) { @posts.first }

		context 'search query gives a result' do

			it 'should filter posts by message' do
				expect(Post.search(post.message)).to match_array(@posts)
			end

			it 'should filter pots by name of the author' do
				expect(Post.search(post.name)).to match_array(post)
			end
		end

		context 'search query does not give a result' do	
			it 'should not find any message' do
				Post.where(name: post.name).destroy_all
				Post.where(message: post.message).destroy_all
				expect(Post.search(post.name)).to be_blank
			end
		end
	end
end
