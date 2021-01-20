class EmployeesController < ApplicationController
def show
a  = Faraday.get('http://localhost:3000/employees/1', {}, {'Accept' => 'application/json'})
render json: a
end

def create
conn = Bunny.new
conn.start

ch = conn.create_channel

q  = ch.queue("test1")

q.publish(params)
end

def update_with_body 
conn = Bunny.new
conn.start

ch = conn.create_channel

q  = ch.queue("test1")

q.publish(params)
end

def update
conn = Bunny.new
conn.start

ch = conn.create_channel

q  = ch.queue("test1")

q.publish(params)
end

def destroy
end
end
