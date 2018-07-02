describe 'CV-extended', type: :feature do
  end

  it 'work title' do
    expect(page).to have_content 'Student at Craft Academy'
  end

  it 'displays project name' do
    expect(page).to have_content 'Studying to become a web-developer'
  end
end 