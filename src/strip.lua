backend = backend or Backend.dummy

backend.intwiden = nil
backend.placevars = nil
backend.floatwiden = nil
backend.expand = nil
backend.liveness = nil
backend.ralloc =nil
backend.freeze =nil
backend.rmvfp = nil
backend.asm= Asm.cmm
backend.emit_data =nil

backend.preopt = Optimize.remove_nops
