// SPDX-License-Identifier: MIT
// FantaradToken.sol
// pragma solidity ^0.5.0;

pragma solidity ^0.5.8;

import "./Context.sol";
import "./TRC20.sol";
import "./TRC20Detailed.sol";

/**
 * @title FantaraToken
 * @dev Simple TRC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `TRC20` functions.
 */
contract SimpleToken is Context, TRC20, TRC20Detailed {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    constructor () public TRC20Detailed("FANTARA", "FTR", 18) {
        _mint(_msgSender(), 1000000000 * (10 ** uint256(decimals())));
    }
}