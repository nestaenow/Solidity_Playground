//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SupplyChain {
    // Define the data structure for a product
    struct Product {
        uint256 id;
        string supplier;
        string manufacturer;
        string distributor;
        string retailer;
        uint256 timestamp;
    }

    // Mapping of product IDs to product data
    mapping(uint256 => Product) products;

    // Variable to keep track of the number of products
    uint256 productCount;

    // Event to log changes to a product
    event LogProductChange(uint256 id, string supplier, string manufacturer, string distributor, string retailer, uint256 timestamp);

    // Function to add a product to the blockchain
    function addProduct(string memory _supplier) public {
        uint256 id = productCount + 1;
        products[id] = Product(id, _supplier, "", "", "", block.timestamp);
        productCount++;
        emit LogProductChange(id, _supplier, "", "", "", block.timestamp);
    }

    // Function to update product data
    function updateProduct(uint256 _id, string memory _manufacturer, string memory _distributor, string memory _retailer) public {
        Product storage product = products[_id];
        product.manufacturer = _manufacturer;
        product.distributor = _distributor;
        product.retailer = _retailer;
        product.timestamp = block.timestamp;
        emit LogProductChange(_id, product.supplier, _manufacturer, _distributor, _retailer, block.timestamp);
    } 

    // Function to get a product's data
    function getProduct(uint256 _id) public view returns (uint256, string memory, string memory, string memory, string memory, uint256) {
        Product storage product = products[_id];
        return (product.id, product.supplier, product.manufacturer, product.distributor, product.retailer, product.timestamp);
    }
}
