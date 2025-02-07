require 'rails_helper'

RSpec.describe "purchases/new", type: :view do
  before(:each) do
    assign(:purchase, Purchase.new)
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do
      assert_select "select[name=?]", "purchase[location_id]"
      assert_select "input[name=?]", "purchase[total_price]"
      assert_select "select[name=?]", "purchase[purchased_by_id]"
      assert_select "select[name=?]", "purchase[reimbursed_by_id]"
      assert_select "input[name=?]", "purchase[reimbursement_check_number]"
      assert_select "input[name=?]", "purchase[reimbursement_status]"
    end
  end
end
