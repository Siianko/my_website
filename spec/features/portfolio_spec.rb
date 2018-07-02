describe 'Portolio Page', type: :feature do
    before(:example) do
      visit '/'
  end

  it 'displays portfolio title' do
    expect(page).to have_content 'My First Website'
  end

  it 'displays project name' do
    expect(page).to have_content 'My First Website'
  end
end 