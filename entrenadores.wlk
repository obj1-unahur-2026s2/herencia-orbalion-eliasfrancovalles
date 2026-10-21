class Entrenadores {
    const cantDeCiclosSolaresDeExp
    const estaEnSintonia
    const nivelDePrecisionEstrategica
    var rol
    const rolesHomologados = #{"Estratega Cuántico", "Arquitecto de Energía", "Guía Mental"}
    
    method cantDeCiclosSolaresDeExp() = cantDeCiclosSolaresDeExp
    method estaEnSintonia() = estaEnSintonia
    method nivelDePrecisionEstrategica() = nivelDePrecisionEstrategica
    method rol() = rol
    method cambiarRol(nuevoRol) {
        if(not rolesHomologados.contains(nuevoRol)) {
            self.error("Rol no homologado por la FOZ")
        } else {
            rol = nuevoRol
        }
    }
}