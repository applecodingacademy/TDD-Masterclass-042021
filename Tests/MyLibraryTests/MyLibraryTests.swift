import XCTest
@testable import MyLibrary

final class MyLibraryTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyLibrary().text, "Hello, World!")
    }
    
    func testSumaDos() {
        XCTAssert(sumaDos(a: 5, b: 5) == 10, "Los valores no coinciden")
    }
    
    func testCargaDatos() {
        XCTAssertEqual(MiCarga().empleados.count, 1000)
    }
    
    func testDataFromFile() throws {
        let bundle = Bundle.module
        let ruta = try XCTUnwrap(bundle.url(forResource: "EmpleadosData", withExtension: "json"))
        XCTAssertNoThrow(try Data(contentsOf: ruta))
        let jsonData = try Data(contentsOf: ruta)
        XCTAssertNoThrow(try JSONDecoder().decode([EmployeeData].self, from: jsonData))
        let empleados = try JSONDecoder().decode([EmployeeData].self, from: jsonData)
        XCTAssertEqual(empleados.count, 1000)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
