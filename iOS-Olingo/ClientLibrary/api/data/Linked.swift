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
//  Linked.swift
//  iOS-Olingo
//
//  Created by Greg Napier on 13/07/2016.
//  Copyright © 2016 EnergySys. All rights reserved.
//

import Foundation

public class Linked: AbstractODataObject {
  
  // MARK: - Stored Properties


  public let associationLinks:[Link] = []  //G
  public let navigationLinks:[Link] = []  //G
  public let bindingLinks:[Link] = [] //G
  
  
  // MARK: - Computed Properties

  
  // MARK: - Init
  
  
  // MARK: - Methods

  func getOneByTitle(name:String, links:[Link]) ->  Link?{
    var result:Link?
    
    for link in links {
      if name == link.title {
        result = link
      }
    }
    return result
  }
  
  /**
   * Gets association link with given name, if available, otherwise <tt>nil</tt>.
   *
   * @param name candidate link name
   * @return association link with given name, if available, otherwise <tt>nil</tt>
   */
  public func getAssociationLink(name:String) -> Link? {
    return getOneByTitle(name, links: associationLinks)
  }
  
  /**
   * Gets navigation link with given name, if available, otherwise <tt>nil</tt>.
   *
   * @param name candidate link name
   * @return navigation link with given name, if available, otherwise <tt>nil</tt>
   */
  public func getNavigationLink(name:String) -> Link? {
    return getOneByTitle(name, links: navigationLinks)
  }
  

  
  /**
   * Gets binding link with given name, if available, otherwise <tt>nil</tt>.
   * @param name candidate link name
   * @return binding link with given name, if available, otherwise <tt>nil</tt>
   */
  public func getNavigationBinding(name:String) -> Link? {
    return getOneByTitle(name, links: bindingLinks)
  }
  
  
  public override func equals(o:AnyObject) -> Bool {
    return true
    // TODO: add checks
    /*
    return super.equals(o)
      && associationLinks.equals(((Linked) o).associationLinks)
      && navigationLinks.equals(((Linked) o).navigationLinks)
      && bindingLinks.equals(((Linked) o).bindingLinks)
    */
  }
  
  // TODO: func hashCode() -> Int
  /*
  public func hashCode() -> Int {
    int result = super.hashCode()
    result = 31 * result + associationLinks.hashCode()
    result = 31 * result + navigationLinks.hashCode()
    result = 31 * result + bindingLinks.hashCode()
    return result
  }
 */
}
