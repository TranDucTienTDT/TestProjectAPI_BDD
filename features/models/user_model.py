class UserModel(object):
    def __init__(self):
        self.firstName = ""
        self.lastName = ""
        self.email = ""
        self.registered = ""
        self.confirmed = ""
        self.active = ""
        self.access = ""

    def add_user(self, firstName: object, lastName: object, email: object, registered: object, confirmed: object, active: object, access: object) -> object:
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.registered = registered
        self.confirmed = confirmed
        self.active = active
        self.access = access
