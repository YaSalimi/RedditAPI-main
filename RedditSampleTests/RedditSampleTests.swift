//
//  RedditSampleTests.swift
//  RedditSampleTests
//
//  Created by Yassine Salimi on 9/12/21.
//

import XCTest
@testable import RedditSample


class RedditSampleTests: XCTestCase {
    
   

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func test_redditViewModel_getTitle()
    {
      
        let objRedditModel = getTastableViewModel()
        XCTAssertEqual(objRedditModel.getTitle(at: 0), "Test Title 1")
        XCTAssertEqual(objRedditModel.getTitle(at: 1), "Test Title 2")
    }
    
    func test_redditViewModel_getScore()
    {
        let objRedditModel = getTastableViewModel()
        XCTAssertEqual(objRedditModel.getScore(at: 0), "1")
        XCTAssertEqual(objRedditModel.getScore(at: 1), "2")
        
    }
    
    func test_redditViewModel_getNumComments()
    {
        let objRedditModel = getTastableViewModel()
        XCTAssertEqual(objRedditModel.getNumComments(at: 0), "1")
        XCTAssertEqual(objRedditModel.getNumComments(at: 1), "2")
    }
    
    func test_redditViewModel_geterrorDescription() {
        let objRedditModel = getTastableViewModel()
        XCTAssertEqual(objRedditModel.geterrorDescription(), "Test Error")
        
    }
    func test_redditViewModel_thumbnail_height () {
        let objRedditModel = getTastableViewModel()
        
    }
    
    
    
    
    //MARK: - Helper
    
    func getTastableViewModel() -> RedditViewModel{
        let testFeeds : [ChildData] = [ChildData(title: "Test Title 1", num_comments: 1, score: 1, thumbnail: nil, thumbnail_height: nil, thumbnail_width: nil), ChildData(title: "Test Title 2", num_comments: 2, score: 2, thumbnail: nil, thumbnail_height: nil, thumbnail_width: nil)]
        let objRedditModel = RedditViewModel(errorDescription: "Test Error", rowUpdate: 1, feeds: testFeeds)
        
        return objRedditModel
    }
    


}
