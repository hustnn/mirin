// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface IMirinCurve {
    function isValidData(bytes32 data) external pure returns (bool);

    function computeK(
        uint112 reserve0,
        uint112 reserve1,
        bytes32 data
    ) external pure returns (uint256);

    function computeLiquidity(
        uint112 reserve0,
        uint112 reserve1,
        bytes32 data
    ) external pure returns (uint256);

    function computeLiquidity(uint256 k, bytes32 data) external pure returns (uint256);

    function computePrice(
        uint112 reserve0,
        uint112 reserve1,
        bytes32 data,
        uint8 tokenIn
    ) external pure returns (uint256);

    function computeAmountOut(
        uint256 amountIn,
        uint112 reserve0,
        uint112 reserve1,
        bytes32 data,
        uint8 swapFee,
        uint8 tokenIn
    ) external pure returns (uint256);

    function computeAmountIn(
        uint256 amountOut,
        uint112 reserve0,
        uint112 reserve1,
        bytes32 data,
        uint8 swapFee,
        uint8 tokenIn
    ) external pure returns (uint256);
}
