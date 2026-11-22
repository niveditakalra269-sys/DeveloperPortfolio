
import requests
import json

url = "https://jsonplaceholder.typicode.com/users"

response = requests.get(url)

if response.status_code == 200:
    data = response.json()

    with open("users.json", "w") as file:
        json.dump(data, file, indent=4)

    print("API data fetched successfully!")
    print("Status Code:", response.status_code)
    print("Data saved in users.json")
else:
    print("API request failed!")
