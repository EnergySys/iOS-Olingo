/*
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License") you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at
 
    http://www.apache.org/licenses/LICENSE-2.0
 
  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
 */

// Implementation based on Olingo's original java V4 implmentation.  Further details can be found at http://olingo.apache.org

//
//  ClientComplexValue.swift
//  iOS-Olingo
//
//  Created by Greg Napier on 13/07/2016.
//  Copyright © 2016 EnergySys. All rights reserved.
//

import Foundation

/// OData complex property value

public protocol ClientComplexValue: ClientValue { //TODO: ClientLinked, ClientAnnotatable {
  
  // MARK: - Protocol Properties

  var size: Int {get}
  
  // MARK: - Protocol Methods
  
  /// Adds field to the complex type
  /// - parameters:
  ///   - field: field to be added
  /// - returns: self
  /// - throws: No error conditions are expected
  func add(field:ClientProperty) -> ClientComplexValue

  /// Gets field by name
  /// - parameters:
  ///   - name: name of the field to be retrieved
  /// - returns: requested property
  /// - throws: No error conditions are expected
  func get(name:String) -> ClientProperty?
  
  /// Gets dictionary of swift native types
  /// - parameters:
  ///   - none:
  /// - returns: Dictionary of native types
  /// - throws: No error conditions are expected
  func asNativeTypeMap() -> [String: Any]

}
