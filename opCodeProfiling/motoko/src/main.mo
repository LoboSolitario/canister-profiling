actor OpcodeProfiler {

  // Profile ADD opcode
  public func profileAdd() : async Nat {
    // let result = 1 + 1; // Simple addition to trigger the ADD opcode
    return 1+1;
  };

    // Profile ADD opcode
  public func profileSubstract() : async Nat {
    let result = 2 - 1; // Simple addition to trigger the ADD opcode
    return result;
  };

  // Profile other opcodes similarly...

};
