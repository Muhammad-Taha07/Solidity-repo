// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract todoapp
{
    string detail;
    constructor()
    {
        detail = "Program Made by Muhammad Taha";
    }

    struct Task{
        string task;
        bool isDone;
    }
    

    mapping (address => Task[]) Users;
    // Users[msg.sender];

    function addTask(string memory _task) public
    {
        Task memory taskvar = Task(_task, false);
        Users[msg.sender].push(taskvar);
    }

    function getTask(uint _taskIndex) public view returns(Task memory)
    {
        return Users[msg.sender][_taskIndex]; 
    }

    function updateStatus(uint256 _taskIndex, bool _status) public
    {
        Users[msg.sender][_taskIndex].isDone = _status;
    }

    function updateTask(uint256 _taskIndex, string memory _task) public
    {
        Users[msg.sender][_taskIndex].task = _task;
    }

    function deleteTask(uint256 _taskIndex) public
    {
        delete Users[msg.sender][_taskIndex];
    }

    function getDetails() public view returns(string memory)
    {
        return(detail);
    }
}