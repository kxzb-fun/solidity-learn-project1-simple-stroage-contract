// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions

contract SimpleStorage {
    // likeNumber gets initialized to 0 if no value is given
    uint256 public likeNumber;

    function store(uint256 _likeNumber) public virtual  {
        likeNumber = _likeNumber;
    } // Note that function 花括号 the curly brackets {} not add ";"

    function retrieve () public view returns(uint256) {
        return likeNumber;
    }

    function getPureNumber () public pure returns(uint256) {
        return 999;
    }

    struct Student {
        uint256 number;
        string name;
    }

    // Student public tom =  Student(42, 'Tom');
    // Student public lily =  Student({number: 11, name: 'Lily'});
    // Student public jerry =  Student({number: 11, name: 'Jerry'});

    // static array
    // Student[3] public listOfStudent;
    // dynamic array
    Student[] public listOfStudent;

    // mapping 映射关系 tom --> 88
    mapping (string => uint256) public nameToNumber;

    function addStudent(string memory _name, uint _number) public  {
        Student memory newStudent = Student(_number, _name);
        // listOfStudent.push(Student(_number, _name));
        listOfStudent.push(newStudent);
        // Adding someone to the mapping
        nameToNumber[_name] = _number;
    }
}