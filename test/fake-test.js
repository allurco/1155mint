const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("1155 Fake", function () {
  it("Should return new nft amounts", async function () {
    const [owner] = await ethers.getSigners();

    const Fake = await ethers.getContractFactory("Fake1155");
    const fake1155 = await Fake.deploy();
    await fake1155.deployed();

    expect(await fake1155.balanceOf(owner.address, 0)).to.equal(1);
    expect(await fake1155.balanceOf(owner.address, 1)).to.equal(100);

    await fake1155.mintmore(100, 1)

    expect(await fake1155.balanceOf(owner.address, 1)).to.equal(200);

  });
});
