/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_import.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which is imported by unittest.proto to test importing.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

enum ProtobufUnittestImport_ImportEnum: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
  typealias RawValue = Int
  case importFoo // = 7
  case importBar // = 8
  case importBaz // = 9

  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    7: .same(proto: "IMPORT_FOO"),
    8: .same(proto: "IMPORT_BAR"),
    9: .same(proto: "IMPORT_BAZ"),
  ]

  init() {
    self = .importFoo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 7: self = .importFoo
    case 8: self = .importBar
    case 9: self = .importBaz
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .importFoo: return 7
    case .importBar: return 8
    case .importBaz: return 9
    }
  }

}

///   To use an enum in a map, it must has the first value as 0.
enum ProtobufUnittestImport_ImportEnumForMap: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
  typealias RawValue = Int
  case unknown // = 0
  case foo // = 1
  case bar // = 2

  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "FOO"),
    2: .same(proto: "BAR"),
  ]

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .foo
    case 2: self = .bar
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .foo: return 1
    case .bar: return 2
    }
  }

}

struct ProtobufUnittestImport_ImportMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ImportMessage"
  static let protoPackageName: String = "protobuf_unittest_import"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "d"),
  ]

  private var _d: Int32? = nil
  var d: Int32 {
    get {return _d ?? 0}
    set {_d = newValue}
  }
  var hasD: Bool {
    return _d != nil
  }
  mutating func clearD() {
    return _d = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func _protobuf_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protobuf_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeSingularInt32Field(value: &_d)
    default: break
    }
  }

  func _protobuf_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _d {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittestImport_ImportMessage) -> Bool {
    if _d != other._d {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
