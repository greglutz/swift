// REQUIRES: objc_interop
// RUN: rm -rf %t && mkdir -p %t && %swift -update-code -primary-file %s  -F %S/mock-sdk -api-diff-data-file %S/API.json -emit-migrated-file-path %t/rename-init.swift.result -o %t/rename-init.swift.remap -disable-migrator-fixits
// RUN: diff -u %S/rename-init.swift.expected %t/rename-init.swift.result

import Bar

func foo() {
  _ = BarForwardDeclaredClass(oldLabel0:1)
}
