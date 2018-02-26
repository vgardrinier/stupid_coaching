require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a silly response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Say smtgh like fuck off when u r asking a question" do
    visit ask_url
    fill_in "question", with: "wazzup?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end

