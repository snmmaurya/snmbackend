User.create!(email: "snm@gmail.com", mobile_number: "7666766517", password: "password", password_confirmation: "password")


User.create!(email: "snm@gmail.com", mobile_number: "7666766517", password: "password", password_confirmation: "password")


User.create!(first_name: "Sandeep", email: "snm@gmail.com", mobile_number: "7666766517", password: "password", password_confirmation: "password")


User.create!(first_name: "Sandeep", email: "snm@gmail.com", mobile_number: "7666766517", password: "password", password_confirmation: "password", address: "welcomewelcomewelcome")


curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer TOKEN" -d '{"user": {"email": "snm2@gmai.com", "password": "password", "password_confirmation": "password", "mobile_number": "7666766519", "first_name": "Snm", "last_name": "Maurya"}}' http://localhost:3000/api/v1/users/registration