foo = "fire"

describe "smoke", ->
    it "should be caused by fire", () ->
        expect(foo).to.equal("fire")