

import XCTest

class WikipediaXCUITests: BaseXCUITest {

    func testSearchFieldExists() throws {
        let searchField : XCUIElement = WikipediaScreen.searchWikipediaField.element
        XCTAssertTrue(searchField.exists)
        }
    
    func testSearchQuery() throws{
        let searchText: String = "Weather"
        //let searchField = BaseXCUITest.getSearchField()
        let searchField = WikipediaScreen.searchWikipediaField.element
        searchField.tap()
        searchField.typeText(searchText)
        XCTAssertTrue( BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 0).exists)
        }
    
    func testSearchHistory() throws {
        let searchText: String = "Berlin"
        let searchField = WikipediaScreen.searchWikipediaField.element
        searchField.tap()
        searchField.typeText(searchText)
        WikipediaScreen.searchButton.element.tap()
        XCTAssertTrue( BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 3).waitForExistence(timeout: 1))
        BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 3).tap()
        BaseXCUITest.backOnNavigationBar().tap()
        WikipediaScreen.cancel.element.tap()        
        WikipediaScreen.searchWikipediaField.element.tap()    
        BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 2).waitForExistence(timeout: 1)
        XCTAssertEqual(BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 2).label, searchText)
        }
    
    func testClearSearch() throws {
        let searchText: String = "Weather tomorrow"
        let searchField = WikipediaScreen.searchWikipediaField.element
        searchField.tap()
        searchField.typeText(searchText)
        WikipediaScreen.searchButton.element.tap()
        BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 3).waitForExistence(timeout: 1)
        BaseXCUITest.getResultCollection().staticTexts.element(boundBy: 3).tap()
        BaseXCUITest.searchWikipediaOnNavigationBar().tap()
        WikipediaScreen.clear.element.tap()
        WikipediaScreen.deleteAll.element.tap()
        XCTAssertTrue(WikipediaScreen.noRecentSearchesYet.element.waitForExistence(timeout: 1))
        }


//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//   }
}
