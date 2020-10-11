require "application_system_test_case"

class AnalysesTest < ApplicationSystemTestCase
  setup do
    @analysis = analyses(:one)
  end

  test "visiting the index" do
    visit analyses_url
    assert_selector "h1", text: "Analyses"
  end

  test "creating a Analysis" do
    visit analyses_url
    click_on "New Analysis"

    fill_in "Affiliate link1", with: @analysis.affiliate_link1
    fill_in "Affiliate link10", with: @analysis.affiliate_link10
    fill_in "Affiliate link2", with: @analysis.affiliate_link2
    fill_in "Affiliate link3", with: @analysis.affiliate_link3
    fill_in "Affiliate link4", with: @analysis.affiliate_link4
    fill_in "Affiliate link5", with: @analysis.affiliate_link5
    fill_in "Affiliate link6", with: @analysis.affiliate_link6
    fill_in "Affiliate link7", with: @analysis.affiliate_link7
    fill_in "Affiliate link8", with: @analysis.affiliate_link8
    fill_in "Affiliate link9", with: @analysis.affiliate_link9
    fill_in "Analysis article image", with: @analysis.analysis_article_image
    fill_in "Analysis article title", with: @analysis.analysis_article_title
    fill_in "Buyers guide", with: @analysis.buyers_guide
    fill_in "Conclusion", with: @analysis.conclusion
    fill_in "Did you know", with: @analysis.did_you_know
    fill_in "Expert tip", with: @analysis.expert_tip
    fill_in "Highlight10 1", with: @analysis.highlight10_1
    fill_in "Highlight10 2", with: @analysis.highlight10_2
    fill_in "Highlight10 3", with: @analysis.highlight10_3
    fill_in "Highlight10 4", with: @analysis.highlight10_4
    fill_in "Highlight10 5", with: @analysis.highlight10_5
    fill_in "Highlight1 1", with: @analysis.highlight1_1
    fill_in "Highlight1 1 short", with: @analysis.highlight1_1_short
    fill_in "Highlight1 2", with: @analysis.highlight1_2
    fill_in "Highlight1 2 short", with: @analysis.highlight1_2_short
    fill_in "Highlight1 3", with: @analysis.highlight1_3
    fill_in "Highlight1 3 short", with: @analysis.highlight1_3_short
    fill_in "Highlight1 4", with: @analysis.highlight1_4
    fill_in "Highlight1 5", with: @analysis.highlight1_5
    fill_in "Highlight2 1", with: @analysis.highlight2_1
    fill_in "Highlight2 1 short", with: @analysis.highlight2_1_short
    fill_in "Highlight2 2", with: @analysis.highlight2_2
    fill_in "Highlight2 2 short", with: @analysis.highlight2_2_short
    fill_in "Highlight2 3", with: @analysis.highlight2_3
    fill_in "Highlight2 3 short", with: @analysis.highlight2_3_short
    fill_in "Highlight2 4", with: @analysis.highlight2_4
    fill_in "Highlight2 5", with: @analysis.highlight2_5
    fill_in "Highlight3 1", with: @analysis.highlight3_1
    fill_in "Highlight3 1 short", with: @analysis.highlight3_1_short
    fill_in "Highlight3 2", with: @analysis.highlight3_2
    fill_in "Highlight3 2 short", with: @analysis.highlight3_2_short
    fill_in "Highlight3 3", with: @analysis.highlight3_3
    fill_in "Highlight3 3 short", with: @analysis.highlight3_3_short
    fill_in "Highlight3 4", with: @analysis.highlight3_4
    fill_in "Highlight3 5", with: @analysis.highlight3_5
    fill_in "Highlight4 1", with: @analysis.highlight4_1
    fill_in "Highlight4 2", with: @analysis.highlight4_2
    fill_in "Highlight4 3", with: @analysis.highlight4_3
    fill_in "Highlight4 4", with: @analysis.highlight4_4
    fill_in "Highlight4 5", with: @analysis.highlight4_5
    fill_in "Highlight5 1", with: @analysis.highlight5_1
    fill_in "Highlight5 2", with: @analysis.highlight5_2
    fill_in "Highlight5 3", with: @analysis.highlight5_3
    fill_in "Highlight5 4", with: @analysis.highlight5_4
    fill_in "Highlight5 5", with: @analysis.highlight5_5
    fill_in "Highlight6 1", with: @analysis.highlight6_1
    fill_in "Highlight6 2", with: @analysis.highlight6_2
    fill_in "Highlight6 3", with: @analysis.highlight6_3
    fill_in "Highlight6 4", with: @analysis.highlight6_4
    fill_in "Highlight6 5", with: @analysis.highlight6_5
    fill_in "Highlight7 1", with: @analysis.highlight7_1
    fill_in "Highlight7 2", with: @analysis.highlight7_2
    fill_in "Highlight7 3", with: @analysis.highlight7_3
    fill_in "Highlight7 4", with: @analysis.highlight7_4
    fill_in "Highlight7 5", with: @analysis.highlight7_5
    fill_in "Highlight8 1", with: @analysis.highlight8_1
    fill_in "Highlight8 2", with: @analysis.highlight8_2
    fill_in "Highlight8 3", with: @analysis.highlight8_3
    fill_in "Highlight8 4", with: @analysis.highlight8_4
    fill_in "Highlight8 5", with: @analysis.highlight8_5
    fill_in "Highlight9 1", with: @analysis.highlight9_1
    fill_in "Highlight9 2", with: @analysis.highlight9_2
    fill_in "Highlight9 3", with: @analysis.highlight9_3
    fill_in "Highlight9 4", with: @analysis.highlight9_4
    fill_in "Highlight9 5", with: @analysis.highlight9_5
    fill_in "Image link1", with: @analysis.image_link1
    fill_in "Image link10", with: @analysis.image_link10
    fill_in "Image link2", with: @analysis.image_link2
    fill_in "Image link3", with: @analysis.image_link3
    fill_in "Image link4", with: @analysis.image_link4
    fill_in "Image link5", with: @analysis.image_link5
    fill_in "Image link6", with: @analysis.image_link6
    fill_in "Image link7", with: @analysis.image_link7
    fill_in "Image link8", with: @analysis.image_link8
    fill_in "Image link9", with: @analysis.image_link9
    fill_in "Introduction", with: @analysis.introduction
    fill_in "Seo meta description", with: @analysis.seo_meta_description
    fill_in "Seo title", with: @analysis.seo_title
    fill_in "Summary1", with: @analysis.summary1
    fill_in "Summary10", with: @analysis.summary10
    fill_in "Summary2", with: @analysis.summary2
    fill_in "Summary3", with: @analysis.summary3
    fill_in "Summary4", with: @analysis.summary4
    fill_in "Summary5", with: @analysis.summary5
    fill_in "Summary6", with: @analysis.summary6
    fill_in "Summary7", with: @analysis.summary7
    fill_in "Summary8", with: @analysis.summary8
    fill_in "Summary9", with: @analysis.summary9
    fill_in "Synopsis1", with: @analysis.synopsis1
    fill_in "Synopsis10", with: @analysis.synopsis10
    fill_in "Synopsis2", with: @analysis.synopsis2
    fill_in "Synopsis3", with: @analysis.synopsis3
    fill_in "Synopsis4", with: @analysis.synopsis4
    fill_in "Synopsis5", with: @analysis.synopsis5
    fill_in "Synopsis6", with: @analysis.synopsis6
    fill_in "Synopsis7", with: @analysis.synopsis7
    fill_in "Synopsis8", with: @analysis.synopsis8
    fill_in "Synopsis9", with: @analysis.synopsis9
    fill_in "Title1", with: @analysis.title1
    fill_in "Title10", with: @analysis.title10
    fill_in "Title2", with: @analysis.title2
    fill_in "Title3", with: @analysis.title3
    fill_in "Title4", with: @analysis.title4
    fill_in "Title5", with: @analysis.title5
    fill_in "Title6", with: @analysis.title6
    fill_in "Title7", with: @analysis.title7
    fill_in "Title8", with: @analysis.title8
    fill_in "Title9", with: @analysis.title9
    click_on "Create Analysis"

    assert_text "Analysis was successfully created"
    click_on "Back"
  end

  test "updating a Analysis" do
    visit analyses_url
    click_on "Edit", match: :first

    fill_in "Affiliate link1", with: @analysis.affiliate_link1
    fill_in "Affiliate link10", with: @analysis.affiliate_link10
    fill_in "Affiliate link2", with: @analysis.affiliate_link2
    fill_in "Affiliate link3", with: @analysis.affiliate_link3
    fill_in "Affiliate link4", with: @analysis.affiliate_link4
    fill_in "Affiliate link5", with: @analysis.affiliate_link5
    fill_in "Affiliate link6", with: @analysis.affiliate_link6
    fill_in "Affiliate link7", with: @analysis.affiliate_link7
    fill_in "Affiliate link8", with: @analysis.affiliate_link8
    fill_in "Affiliate link9", with: @analysis.affiliate_link9
    fill_in "Analysis article image", with: @analysis.analysis_article_image
    fill_in "Analysis article title", with: @analysis.analysis_article_title
    fill_in "Buyers guide", with: @analysis.buyers_guide
    fill_in "Conclusion", with: @analysis.conclusion
    fill_in "Did you know", with: @analysis.did_you_know
    fill_in "Expert tip", with: @analysis.expert_tip
    fill_in "Highlight10 1", with: @analysis.highlight10_1
    fill_in "Highlight10 2", with: @analysis.highlight10_2
    fill_in "Highlight10 3", with: @analysis.highlight10_3
    fill_in "Highlight10 4", with: @analysis.highlight10_4
    fill_in "Highlight10 5", with: @analysis.highlight10_5
    fill_in "Highlight1 1", with: @analysis.highlight1_1
    fill_in "Highlight1 1 short", with: @analysis.highlight1_1_short
    fill_in "Highlight1 2", with: @analysis.highlight1_2
    fill_in "Highlight1 2 short", with: @analysis.highlight1_2_short
    fill_in "Highlight1 3", with: @analysis.highlight1_3
    fill_in "Highlight1 3 short", with: @analysis.highlight1_3_short
    fill_in "Highlight1 4", with: @analysis.highlight1_4
    fill_in "Highlight1 5", with: @analysis.highlight1_5
    fill_in "Highlight2 1", with: @analysis.highlight2_1
    fill_in "Highlight2 1 short", with: @analysis.highlight2_1_short
    fill_in "Highlight2 2", with: @analysis.highlight2_2
    fill_in "Highlight2 2 short", with: @analysis.highlight2_2_short
    fill_in "Highlight2 3", with: @analysis.highlight2_3
    fill_in "Highlight2 3 short", with: @analysis.highlight2_3_short
    fill_in "Highlight2 4", with: @analysis.highlight2_4
    fill_in "Highlight2 5", with: @analysis.highlight2_5
    fill_in "Highlight3 1", with: @analysis.highlight3_1
    fill_in "Highlight3 1 short", with: @analysis.highlight3_1_short
    fill_in "Highlight3 2", with: @analysis.highlight3_2
    fill_in "Highlight3 2 short", with: @analysis.highlight3_2_short
    fill_in "Highlight3 3", with: @analysis.highlight3_3
    fill_in "Highlight3 3 short", with: @analysis.highlight3_3_short
    fill_in "Highlight3 4", with: @analysis.highlight3_4
    fill_in "Highlight3 5", with: @analysis.highlight3_5
    fill_in "Highlight4 1", with: @analysis.highlight4_1
    fill_in "Highlight4 2", with: @analysis.highlight4_2
    fill_in "Highlight4 3", with: @analysis.highlight4_3
    fill_in "Highlight4 4", with: @analysis.highlight4_4
    fill_in "Highlight4 5", with: @analysis.highlight4_5
    fill_in "Highlight5 1", with: @analysis.highlight5_1
    fill_in "Highlight5 2", with: @analysis.highlight5_2
    fill_in "Highlight5 3", with: @analysis.highlight5_3
    fill_in "Highlight5 4", with: @analysis.highlight5_4
    fill_in "Highlight5 5", with: @analysis.highlight5_5
    fill_in "Highlight6 1", with: @analysis.highlight6_1
    fill_in "Highlight6 2", with: @analysis.highlight6_2
    fill_in "Highlight6 3", with: @analysis.highlight6_3
    fill_in "Highlight6 4", with: @analysis.highlight6_4
    fill_in "Highlight6 5", with: @analysis.highlight6_5
    fill_in "Highlight7 1", with: @analysis.highlight7_1
    fill_in "Highlight7 2", with: @analysis.highlight7_2
    fill_in "Highlight7 3", with: @analysis.highlight7_3
    fill_in "Highlight7 4", with: @analysis.highlight7_4
    fill_in "Highlight7 5", with: @analysis.highlight7_5
    fill_in "Highlight8 1", with: @analysis.highlight8_1
    fill_in "Highlight8 2", with: @analysis.highlight8_2
    fill_in "Highlight8 3", with: @analysis.highlight8_3
    fill_in "Highlight8 4", with: @analysis.highlight8_4
    fill_in "Highlight8 5", with: @analysis.highlight8_5
    fill_in "Highlight9 1", with: @analysis.highlight9_1
    fill_in "Highlight9 2", with: @analysis.highlight9_2
    fill_in "Highlight9 3", with: @analysis.highlight9_3
    fill_in "Highlight9 4", with: @analysis.highlight9_4
    fill_in "Highlight9 5", with: @analysis.highlight9_5
    fill_in "Image link1", with: @analysis.image_link1
    fill_in "Image link10", with: @analysis.image_link10
    fill_in "Image link2", with: @analysis.image_link2
    fill_in "Image link3", with: @analysis.image_link3
    fill_in "Image link4", with: @analysis.image_link4
    fill_in "Image link5", with: @analysis.image_link5
    fill_in "Image link6", with: @analysis.image_link6
    fill_in "Image link7", with: @analysis.image_link7
    fill_in "Image link8", with: @analysis.image_link8
    fill_in "Image link9", with: @analysis.image_link9
    fill_in "Introduction", with: @analysis.introduction
    fill_in "Seo meta description", with: @analysis.seo_meta_description
    fill_in "Seo title", with: @analysis.seo_title
    fill_in "Summary1", with: @analysis.summary1
    fill_in "Summary10", with: @analysis.summary10
    fill_in "Summary2", with: @analysis.summary2
    fill_in "Summary3", with: @analysis.summary3
    fill_in "Summary4", with: @analysis.summary4
    fill_in "Summary5", with: @analysis.summary5
    fill_in "Summary6", with: @analysis.summary6
    fill_in "Summary7", with: @analysis.summary7
    fill_in "Summary8", with: @analysis.summary8
    fill_in "Summary9", with: @analysis.summary9
    fill_in "Synopsis1", with: @analysis.synopsis1
    fill_in "Synopsis10", with: @analysis.synopsis10
    fill_in "Synopsis2", with: @analysis.synopsis2
    fill_in "Synopsis3", with: @analysis.synopsis3
    fill_in "Synopsis4", with: @analysis.synopsis4
    fill_in "Synopsis5", with: @analysis.synopsis5
    fill_in "Synopsis6", with: @analysis.synopsis6
    fill_in "Synopsis7", with: @analysis.synopsis7
    fill_in "Synopsis8", with: @analysis.synopsis8
    fill_in "Synopsis9", with: @analysis.synopsis9
    fill_in "Title1", with: @analysis.title1
    fill_in "Title10", with: @analysis.title10
    fill_in "Title2", with: @analysis.title2
    fill_in "Title3", with: @analysis.title3
    fill_in "Title4", with: @analysis.title4
    fill_in "Title5", with: @analysis.title5
    fill_in "Title6", with: @analysis.title6
    fill_in "Title7", with: @analysis.title7
    fill_in "Title8", with: @analysis.title8
    fill_in "Title9", with: @analysis.title9
    click_on "Update Analysis"

    assert_text "Analysis was successfully updated"
    click_on "Back"
  end

  test "destroying a Analysis" do
    visit analyses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analysis was successfully destroyed"
  end
end
