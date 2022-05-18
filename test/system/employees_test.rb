require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Cedula", with: @employee.cedula
    fill_in "Celular", with: @employee.celular
    fill_in "Ciudad", with: @employee.ciudad
    fill_in "Direccion", with: @employee.direccion
    fill_in "Email", with: @employee.email
    fill_in "Nombres apellidos", with: @employee.nombres_apellidos
    fill_in "Position", with: @employee.position
    check "Tecnico" if @employee.tecnico
    fill_in "Telefono", with: @employee.telefono
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Cedula", with: @employee.cedula
    fill_in "Celular", with: @employee.celular
    fill_in "Ciudad", with: @employee.ciudad
    fill_in "Direccion", with: @employee.direccion
    fill_in "Email", with: @employee.email
    fill_in "Nombres apellidos", with: @employee.nombres_apellidos
    fill_in "Position", with: @employee.position
    check "Tecnico" if @employee.tecnico
    fill_in "Telefono", with: @employee.telefono
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
