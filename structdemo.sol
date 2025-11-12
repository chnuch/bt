// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity program to store and retrieve Employee Details
contract StructDemo {
    // Employee structure
    struct Employee {
        int256 empid;
        string name;
        string department;
        string designation;
    }

    // Dynamic array to store employees
    Employee[] private emps;

    // Function to add employee details
    function addEmployee(
        int256 empid,
        string memory name,
        string memory department,
        string memory designation
    ) public {
        Employee memory e = Employee(empid, name, department, designation);
        emps.push(e);
    }

    // Function to get details of employee by ID
    function getEmployee(int256 empid)
        public
        view
        returns (
            string memory name,
            string memory department,
            string memory designation
        )
    {
        for (uint256 i = 0; i < emps.length; i++) {
            if (emps[i].empid == empid) {
                return (
                    emps[i].name,
                    emps[i].department,
                    emps[i].designation
                );
            }
        }
        // If employee ID not found
        return ("Not Found", "Not Found", "Not Found");
    }

    // Optional: Function to get total number of employees
    function getEmployeeCount() public view returns (uint256) {
        return emps.length;
    }
}
