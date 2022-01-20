//
//  ViewController.swift
//  dz-4.8.dop
//
//  Created by user on 20.01.2022.
//

import UIKit
import SnapKit


class User: Codable {
    var dependentsCount: String? = nil
    var requestingAmount: Int? = nil
    var repaymentDays: Int? = nil
    var educationDegree: String? = nil
    var actualResidenceLocation: String? = nil
    var durationOfActualResidenceLocation: String? = nil
    var placeOfWork: PlaceOfWorkModel? = nil
    var incomes: [IncomesModel] = []
    var maritalStatus: String? = nil
    var spouse: SpouseModel? = nil
    var realEstateItems: [RealEstateItemsModel] = []
    var personalEstateItems: [PersonalEstateItemsModel] = []
    var isPublicOfferRead: Bool? = nil
    var isLimitUpgradeApplication: Bool? = nil
}

class PlaceOfWorkModel: Codable {
    var placeOfWorkType: String? = nil
    var income: Int? = nil
    var address: String? = nil
    var workExperience: String? = nil
    var employeeCompany: String? = nil
    var employeePosition: String? = nil
    var documentImage: String? = nil
    var entrepreneurshipType: String? = nil
    var entrepreneurshipDescription: String? = nil
    var entrepreneurshipCertificateNumber: String? = nil
}

class IncomesModel: Codable {
    var work: String? = nil
    var value: Int? = nil
}

class SpouseModel: Codable {
      var name: String? = nil
      var surname: String? = nil
      var patronymic: String? = nil
      var incomes: [IncomesModelTwo] = []
}

class IncomesModelTwo: Codable {
    var work: String? = nil
    var value: Int? = nil
}

class RealEstateItemsModel: Codable {
    var type: String? = nil
    var address: String? = nil
}

class PersonalEstateItemsModel: Codable {
    var type: String? = nil
    var brand: String? = nil
    var model: String? = nil
    var manufactureYear: Int? = nil
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let json = """
{
  "dependentsCount": "Nil",
  "requestingAmount": 0,
  "repaymentDays": 0,
  "educationDegree": "Higher",
  "actualResidenceLocation": "Bishkek",
  "durationOfActualResidenceLocation": "_0and2Months",
  "placeOfWork": {
    "placeOfWorkType": "Company",
    "income": 100000000,
    "address": "string",
    "workExperience": "OneOrLess",
    "employeeCompany": "string",
    "employeePosition": "Specialist",
    "documentImage": "string",
    "entrepreneurshipType": "Trade",
    "entrepreneurshipDescription": "string",
    "entrepreneurshipCertificateNumber": "string"
  },
  "incomes": [
    {
      "work": "string",
      "value": 100000000
    }
  ],
  "maritalStatus": "Single",
  "spouse": {
    "name": "string",
    "surname": "string",
    "patronymic": "string",
    "incomes": [
      {
        "work": "string",
        "value": 100000000
      }
    ]
  },
  "realEstateItems": [
    {
      "type": "Apartment",
      "address": "string"
    }
  ],
  "personalEstateItems": [
    {
      "type": "Car",
      "brand": "string",
      "model": "string",
      "manufactureYear": 2100
    }
  ],
  "isPublicOfferRead": true,
  "isLimitUpgradeApplication": true
}
"""

        let model = try! JSONDecoder().decode(User.self, from: Data(json.utf8))
        dump(model)
    }
}
