//
//  Copyright (c) 2016 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import FirebaseDatabase

public protocol FirebaseArrayDelegate: class {
    
    func update(with block: (()->Void)?)
    func initialized<T>(array: FirebaseArray<T>)
    func added<T : FirebaseModel>(child: T, at index: Int)
    func changed<T : FirebaseModel>(child: T, at index: Int)
    func removed<T : FirebaseModel>(child: T, at index: Int)
    func moved<T : FirebaseModel>(child: T, from oldIndex: Int, to newIndex: Int)
    func changedSortOrder()
    func cancelled(with error: Error)
    
}

public extension FirebaseArrayDelegate {
    
    func update(with block: (()->Void)?) {}
    func initialized<T>(array: FirebaseArray<T>) {}
    func added<T : FirebaseModel>(child: T, at index: Int) {}
    func changed<T : FirebaseModel>(child: T, at index: Int) {}
    func removed<T : FirebaseModel>(child: T, at index: Int) {}
    func moved<T : FirebaseModel>(child: T, from oldIndex: Int, to newIndex: Int) {}
    func changedSortOrder() {}
    func cancelled(with error: Error) {}
    
}

