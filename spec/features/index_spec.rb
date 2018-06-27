describe 'Index Page', type: :feature do
    before(:example) do
      visit '/'
  end

  it 'displays project list' do
      expect(page).to have_css '.projects'
  end

   it 'displays my title' do
    expect(page).to have_content 'My First Website'
  end

  it 'displays my project name' do
    expect(page).to have_content 'My First Website'
  end
end 