backend = backend or Backend.dummy

backend.intwiden = nil
backend.placevars = Placevar.context(Placevar.x86, "x86")
backend.floatwiden = nil
backend.expand = nil
backend.liveness = Liveness.liveness
backend.ralloc =nil
backend.freeze =nil
backend.rmvfp = nil
backend.asm= Asm.cmm
backend.emit_data =nil

backend.preopt = Optimize.remove_nops

--backend.placevars = nil
backend.liveness =nil

Options.validate = nil
