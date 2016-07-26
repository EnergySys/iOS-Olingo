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


//
//  EdmComplexTypeImpl.swift
//  iOS-Olingo
//
//  Created by Greg Napier on 14/07/2016.
//  Copyright © 2016 EnergySys. All rights reserved.
//

import Foundation

public class EdmComplexTypeImpl: AbstractEdmStructuredType, EdmComplexType {
  
  // MARK: - Stored Properties

  
  // MARK: - Computed Properties

  
  // MARK: - Init

  init (edm:Edm, name:FullQualifiedName ,complexType: CsdlComplexType ) {
    super.init(edm: edm, typeName: name, kind: EdmTypeKind.COMPLEX, structuredType: complexType)
  }
  
  // MARK: - Methods

  
  func buildBaseType(baseTypeName: FullQualifiedName?)  -> EdmStructuredType? {
    var baseType: EdmComplexType? = nil
    if let baseTypeName = baseTypeName {
      baseType = edm.getComplexType(baseTypeName)
      guard let baseType = baseType else {
        //TODO:
        //throw EdmException.BaseTypeNotFound("Can't find base type with name: \(getName()) for complex type: ")
        return nil
      }
    }
    return baseType!
  }
  
  
  public func getBaseType() ->  EdmComplexType  {
    checkBaseType()
    return  baseType as! EdmComplexType
  }
  
  
  override func checkBaseType() {
    if (baseTypeName != nil && baseType == nil) {
      baseType = buildBaseType(baseTypeName)
    }
  }
}
