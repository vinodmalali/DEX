
// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// File: @chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol


pragma solidity ^0.8.0;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

// File: sakhaSwap/priceFeed.sol


pragma solidity ^0.8.0;



contract PriceFetcher {
    using SafeMath for uint256;

    address owner;

    uint public rewardUnit;

    uint public borrowRewardUnit;
    
    uint public repayRewardUnit;

    AggregatorV3Interface public priceFeed;

    mapping (string => address) public symbolToAddr;

    constructor() {
        owner = msg.sender;
    }

    function setChainLinkAdr(string memory _symbol,address _adr) public onlyOwner {
        symbolToAddr[_symbol] = _adr;
    }

    modifier onlyOwner() {
         require(owner == msg.sender, "Not owner");
        _;
    }

    function setRewardUnit(uint _rewardUnit) public onlyOwner {
        rewardUnit = _rewardUnit;
    }

    function setBorrowRewardUnit(uint _borrowRewardUnit) public onlyOwner {
        borrowRewardUnit = _borrowRewardUnit;
    }

    function setRepayRewardUnit(uint _repayRewardUnit) public onlyOwner {
        repayRewardUnit = _repayRewardUnit;
    }

    // Function to get the latest price of Uni in USD
    function getUniPrice() external view returns (int) {
        address assetadr = symbolToAddr['Uni'];
        (, int price, , ,) = AggregatorV3Interface(assetadr).latestRoundData();
        return price;
    }

    // Function to get the latest price of Dai in USD
    function getDaiPrice() external view returns (int) {
        address assetadr = symbolToAddr['Dai'];
        (, int price, , ,) = AggregatorV3Interface(assetadr).latestRoundData();
        return price;
    }

    function getAmtSg(string memory tokenASymbol,uint amountADesired,string memory tokenBSymbol, uint amountBDesired) external view returns (int) {
        address assetAadr = symbolToAddr[tokenASymbol];
        address assetBadr = symbolToAddr[tokenBSymbol];
       (, int priceA, , ,) = AggregatorV3Interface(assetAadr).latestRoundData();
       (, int priceB, , ,) = AggregatorV3Interface(assetBadr).latestRoundData();

        uint256 totalUSD = (amountADesired.div(1e18)).mul(uint256(priceA)).add((amountBDesired.div(1e18)).mul(uint256(priceB)));
        int amtSG = int(totalUSD.div(rewardUnit).div(1e8));

        return amtSG;
    }

    
    function getAmtSgBorrow(string memory tokenSymbol,uint amountDesired) external view returns (int) {
        address assetAadr = symbolToAddr[tokenSymbol];
       (, int priceA, , ,) = AggregatorV3Interface(assetAadr).latestRoundData();
       
        uint256 totalUSD = (amountDesired.div(1e18)).mul(uint256(priceA));
        int amtSG = int(totalUSD.div(borrowRewardUnit).div(1e8));

        return amtSG;
    }

    function getAmtSgRepay(string memory tokenSymbol, uint amountDesired) external view returns (int) {
       address assetAadr = symbolToAddr[tokenSymbol];
       (, int priceA, , ,) = AggregatorV3Interface(assetAadr).latestRoundData();

        uint256 totalUSD = (amountDesired.div(1e18)).mul(uint256(priceA));
        int amtSG = int(totalUSD.div(repayRewardUnit).div(1e8));

        return amtSG;
    }
}
