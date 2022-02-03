import { expect } from "chai";
import { ethers } from "hardhat";

describe("Greeter", function () {
  it("Contract Deployed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy();
    await greeter.deployed();
    console.log("Contract deployed to address: ", greeter.address);
  });
});
