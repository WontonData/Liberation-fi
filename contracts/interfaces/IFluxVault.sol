// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "./IERC20.sol";

interface IFluxVault is IERC20 {
    // 存款，amount 为存入的 token 数量
    function mint(uint256 amount) external;

    // 提现，amount 为要提现的 token 数量
    function redeem(uint256 amount) external;

    // 借款，amount 为要借出的 token 数量
    function borrow(uint256 amount) external;
   
    // 还款， amount 为要还款的 token 数量
    function repay(uint256 amount) external;

    // token 价格
    function underlyingPrice() external view returns (uint256);
    
    /**
      @notice 获取市场兑换汇率
      @return 返回汇率的尾数
     */
    function exchangeRate() external view returns (uint256);
}
