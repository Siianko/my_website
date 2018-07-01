describe 'Portolio Page', type: :feature do
    before(:example) do
      visit '/'
  end

  it 'displays project list' do
    expect(page).to have_css '.projects'
  end

  it 'displays title' do
    expect(page).to have_content 'My First Website'
  end

  it 'displays project name' do
    expect(page).to have_content 'My First Website'
  end
end 