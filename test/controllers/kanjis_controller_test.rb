require 'test_helper'

class KanjisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kanji = kanjis(:one)
  end

  test "should get index" do
    get kanjis_url, as: :json
    assert_response :success
  end

  test "should create kanji" do
    assert_difference('Kanji.count') do
      post kanjis_url, params: { kanji: { character: @kanji.character, classification: @kanji.classification, components: @kanji.components, english: @kanji.english, examples: @kanji.examples, frequency: @kanji.frequency, grade: @kanji.grade, jlpt: @kanji.jlpt, jouyou: @kanji.jouyou, kanji_radical: @kanji.kanji_radical, kanji_strokes: @kanji.kanji_strokes, keyword: @kanji.keyword, koohii1: @kanji.koohii1, koohii2: @kanji.koohii2, kunyomi: @kanji.kunyomi, nanori: @kanji.nanori, onyomi: @kanji.onyomi, radical_number: @kanji.radical_number, radical_reading: @kanji.radical_reading, radical_strokes: @kanji.radical_strokes, rtk: @kanji.rtk, traditional: @kanji.traditional, type: @kanji.type } }, as: :json
    end

    assert_response 201
  end

  test "should show kanji" do
    get kanji_url(@kanji), as: :json
    assert_response :success
  end

  test "should update kanji" do
    patch kanji_url(@kanji), params: { kanji: { character: @kanji.character, classification: @kanji.classification, components: @kanji.components, english: @kanji.english, examples: @kanji.examples, frequency: @kanji.frequency, grade: @kanji.grade, jlpt: @kanji.jlpt, jouyou: @kanji.jouyou, kanji_radical: @kanji.kanji_radical, kanji_strokes: @kanji.kanji_strokes, keyword: @kanji.keyword, koohii1: @kanji.koohii1, koohii2: @kanji.koohii2, kunyomi: @kanji.kunyomi, nanori: @kanji.nanori, onyomi: @kanji.onyomi, radical_number: @kanji.radical_number, radical_reading: @kanji.radical_reading, radical_strokes: @kanji.radical_strokes, rtk: @kanji.rtk, traditional: @kanji.traditional, type: @kanji.type } }, as: :json
    assert_response 200
  end

  test "should destroy kanji" do
    assert_difference('Kanji.count', -1) do
      delete kanji_url(@kanji), as: :json
    end

    assert_response 204
  end
end
