pragma solidity ^0.4.18;

import "./DutchExchange.sol";

contract InternalTests is DutchExchange {
  function settleFeePub(
    address primaryToken,
    address secondaryToken,
    uint auctionIndex,
    address user,
    uint amount
  )
    public
    returns (uint)
  {
    return super.settleFee(primaryToken, secondaryToken, auctionIndex, user, amount);
  }
  
  function InternalTests(
        address _TUL,
        address _OWL,
        address _owner, 
        address _ETH,
        address _ETHUSDOracle,
        uint _thresholdNewTokenPair,
        uint _thresholdNewAuction
    )
        public DutchExchange(
          _TUL,
          _OWL,
          _owner,
          _ETH,
          _ETHUSDOracle,
          _thresholdNewTokenPair,
          _thresholdNewAuction
        )
    {}
}