describe("www.pulumi.com", () => {

    describe("home page", () => {

        it("responds", () => {
            cy.visit("/");
        });
    });


});
