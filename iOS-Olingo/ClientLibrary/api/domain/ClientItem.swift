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
//  ClientItem.swift
//  iOS-Olingo
//
//  Created by Greg Napier on 13/07/2016.
//  Copyright © 2016 EnergySys. All rights reserved.
//

import Foundation

/**
 * Abstract representation of OData entities and links.
 */
public class ClientItem {
  
  // MARK: - Stored Properties


  /// OData entity name/type
  public let name:String //G
  
  /// OData item self link
  public var link:NSURL? //GS
  
  
  // MARK: - Computed Properties

  // MARK: - Init

  init(name:String) {
    self.name = name
  }
  
  // MARK: - Methods
  
  public func equals(obj:AnyObject) -> Bool {
    if (self === obj) {
      return true
    }
    else {
      return false
      //TODO: Additional checks
      /*
      if (obj == null) {
        return false
      }
      if (!(obj instanceof ClientItem)) {
        return false
      }
      ClientItem other = (ClientItem) obj
      if (link == null) {
        if (other.link != null) {
          return false
        }
      } else if (!link.equals(other.link)) {
        return false
      }
      if (name == null) {
        if (other.name != null) {
          return false
        }
      } else if (!name.equals(other.name)) {
        return false
      }
      return true
       */
    }
  }
  
  // TODO: func hashCode() -> Int
    /*
  public func hashCode() -> Int {
  final int prime = 31
  int result = 1
  result = prime * result + ((link == null) ? 0 : link.hashCode())
  result = prime * result + ((name == null) ? 0 : name.hashCode())
  return result
  }
 */
  
  
  public func toString() -> String {
    return "ClientItem [name=\(name), link=\(link)]"
  }
}
