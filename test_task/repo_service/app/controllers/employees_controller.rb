class EmployeesController < ApplicationController
def show
render json: Employee.all
end
end

