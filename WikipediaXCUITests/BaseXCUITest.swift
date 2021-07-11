//~~~**DELETE THIS HEADER**~~~

import XCTest

class BaseXCUITest: XCTestCase {
    
    static let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        BaseXCUITest.app.launch()
    }

    override func tearDown() {
        super.tearDown()
        BaseXCUITest.app.terminate()
    }

    static func getResultCollection() ->XCUIElementQuery{
        return app.collectionViews
    }
     
    static func searchWikipediaOnNavigationBar() -> XCUIElement{
        return app.navigationBars["W"].buttons["Search Wikipedia"]
    }
    
    static func backOnNavigationBar() -> XCUIElement{
        return app.navigationBars["W"].buttons["Search"]
    }
}
    
enum WikipediaScreen: String {
    case searchWikipediaField = "Search Wikipedia"
    case searchButton = "Search"
    case clear = "Clear"
    case deleteAll = "Delete All"
    case cancel = "Cancel"
    case noRecentSearchesYet = "No recent searches yet"
var element: XCUIElement{
    switch self {
    case .searchWikipediaField:
        return BaseXCUITest.app.searchFields["Search Wikipedia"]
    case .searchButton:
        return BaseXCUITest.app.buttons["Search"]
    case .clear:
        return BaseXCUITest.getResultCollection().buttons["Clear"]
    case .deleteAll:
        return BaseXCUITest.app.alerts["Delete all recent searches?"].scrollViews.otherElements.buttons["Delete All"]
    case .noRecentSearchesYet:
        return BaseXCUITest.getResultCollection().staticTexts["No recent searches yet"]
    case .cancel:
        return BaseXCUITest.app.buttons["Cancel"]
        }
    }
}

