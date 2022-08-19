require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Emp address", with: @employee.emp_address
    fill_in "Emp contactno", with: @employee.emp_contactNo
    fill_in "Emp email", with: @employee.emp_email
    fill_in "Emp name", with: @employee.emp_name
    fill_in "Emp position", with: @employee.emp_position
    fill_in "Manager", with: @employee.manager_id
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Emp address", with: @employee.emp_address
    fill_in "Emp contactno", with: @employee.emp_contactNo
    fill_in "Emp email", with: @employee.emp_email
    fill_in "Emp name", with: @employee.emp_name
    fill_in "Emp position", with: @employee.emp_position
    fill_in "Manager", with: @employee.manager_id
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
