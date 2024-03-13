 # MongoDB connection URI with authentication
    uri = f"mongodb://{username}:{password}@localhost:27017/?{auth_source}"


You are connecting to localhost:27017 within your app container - that’s not you host‘s localhost, but the one inside the container.

And as containers are about isolation, that way you can’t connect to other services.

Use the service name instead mongodb:27017, as Docker DNS makes the containers automatically available by their service name.

 # Correct MongoDB connection URI with authentication
    uri = f"mongodb://{username}:{password}@mongodb:27017/?{auth_source}"