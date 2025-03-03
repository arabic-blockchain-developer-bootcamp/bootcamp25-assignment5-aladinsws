// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    uint public counter;

    bool public isActive;

    mapping(address => string) public userNames;

    struct User {
        uint id;
        string name;
    }

    User[] public users;

    // Constructor
    // Initialize `isActive` to true
    constructor() {
        isActive = true;
    }

    // Function to increment the counter
    // This function should:
    // - Be external
    // - Use a for loop to increment `counter` by 1 for 5 iterations
    function incrementCounter() external {
        for (uint i = 0; i < 5; i++) {
            counter++;
        }
    }

    // Function to toggle `isActive`
    // This function should:
    // - Be public
    // - Use an if statement to toggle `isActive` between true and false
    function toggleActive() public {
        if (isActive) {
            isActive = false;
        } else {
            isActive = true;
        }
    }

    // Function to add a user
    // This function should:
    // - Be public
    // - Take three parameters: `id` (uint) and `name` (string) and userAddress (address)
    // Hint: Define string as `string memory`
    // The memory keyword will be explained later
    // - Add a new user to the `users` array
    // - Update the `userNames` mapping with the address and name
    function addUser(
        uint _id,
        string memory _name,
        address _userAddress
    ) public {
        // Fill in the logic
        User memory user = User(_id, _name);
        users.push(user);
        userNames[_userAddress] = _name;
    }

    // Function to get the total number of users
    // This function should:
    // - Be public and view
    // - Return the length of the `users` array
    function getUserCount() public view returns (uint) {
        return users.length;
    }
}
