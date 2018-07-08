const Greeter = artifacts.require('Greeter')
const assert = require('assert')

contract('Greeter', accounts=>{
  it('should return a friendly greeting', async ()=>{
    const greeter = await Greeter.deployed()
    assert.equal(await greeter.welcome(), "Welcome to commitground platform")
  })
})
