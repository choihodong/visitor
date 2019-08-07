pragma solidity ^0.4.24;

contract visit {
    //방문을 처리할 함수욘^_^
    struct Member{
        uint count; //방문횟수를 다룰 것
    }
    mapping(address=> Member) member_map;
    address[] members;

        function getTotalCount() public view returns(uint){
            return members.length;
        }
        function getMemberInfo(address sender) public view returns(uint){
            Member memory m= member_map[sender];
            return m.count;
        }

        function visit() public{
        if(member_map[msg.sender].count>0){
             member_map[msg.sender].count +=1;
        }else{
        members.push(msg.sender);
        Member memory m;
        m.count = 1;
        member_map[msg.sender] = m; 
        }
    }  
    }
