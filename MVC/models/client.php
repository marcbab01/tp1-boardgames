<?php
class client {
    public string $lastName;
    public string $firstName;
    public string $username;
    public string $email;
    public string $phone;
    public string $password;

    function __constructor(string $lastName, string $firstName, string $username, string $email, string $phone, string $password) {
        $this->lastName = $lastName;
        $this->firstName = $firstname;
        $this->username = $username;
        $this->email = $email;
        $this->phone = $phone;
        $this->password = $password;
    }

    function __destructor() {
        echo "Congratulations {$this->firstName}, on joining our wonderful community! We bid you our warmest welcome.";
    }
}