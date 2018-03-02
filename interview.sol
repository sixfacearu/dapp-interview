pragma solidity ^0.4.0;
contract interview{
    struct detail{
        string name;
        uint256 age;
        string degree;
        uint256 id;
    }
    mapping(uint256=>detail)get;
    uint256[] arr;
    uint256 t=now + 1 hours;
    modifier check{
        require(now<t);
        _;
    }
    function setdetails(string _name,uint256 _age,string _degree,uint256 _id)public check{
        get[_id].name=_name;
        get[_id].age=_age;
        get[_id].degree=_degree;
        get[_id].id=_id;
        arr.push(_id);
    }
    function getdetail(uint256 id)public constant returns(string name,uint256 age,string degree,uint256 _id){
        return(get[id].name,get[id].age,get[id].degree,get[id].id);
    }
    function checks(uint256 id)public check constant returns(string){
        for(uint256 i=0;i<=100;i++)
        if(arr[i]!=id){
            return "New candidate";
        }
        else return "Old candidate";
        
    }
}
