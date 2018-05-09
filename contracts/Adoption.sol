pragma solidity ^0.4.23;

contract Adoption {
    
    address[16] public adopters; // 领养者的地址 
        
    // 领养宠物的方法
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);// 确保Id在数组范围内 
        
        adopters[petId] = msg.sender; // 保存调用这个地址
        return petId;
    }
    
    // 返回领养者的的地址 
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
    
}

