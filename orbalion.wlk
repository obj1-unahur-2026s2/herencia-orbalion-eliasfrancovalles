import tecnologias.*

class Equipos {
    const nombre
    const energiaBase
    const entrenador
    const tecnologias = []

    method nombre() = nombre
    method energiaBase() = energiaBase
    method entrenador() = entrenador
    method tecnologias() = tecnologias
    method energiaTotal() {
        const tecnologiasActivas = tecnologias.filter({ tecnologia => tecnologia.activa()})
        const valoresEnergeticos = tecnologiasActivas.map({tecnologia => tecnologia.valorEnergetico()})
        return energiaBase + valoresEnergeticos.sum()
    }
}

class Luminicos inherits Equipos {
    const nivelDeRadiacion
    const nombresDeCristalesSolares = []

    method nivelDeRadiacion() = nivelDeRadiacion
    method nombresDeCristalesSolares() = nombresDeCristalesSolares
    override method energiaTotal() {
        if(nivelDeRadiacion <= 5000) {
            return super() * 1.1
        } else {
            return super()
        }
    }
    method cantDeCristalesSolares() = nombresDeCristalesSolares.size()
    method esDePrestigioUniversal() = self.cantDeCristalesSolares() >= 3 and
        entrenador.esEliteGalactico() and tecnologias.any({tecnologia => tecnologia.activa()})
}

class Sinteticos inherits Equipos {
    const nivelDeProcesamientoCentral
    const cantDeModulosActivos
    const estaCertificado

    method nivelDeProcesamientoCentral() = nivelDeProcesamientoCentral
    method cantDeModulosActivos() = cantDeModulosActivos
    method estaCertificado() = estaCertificado
    override method energiaTotal() {
        if(cantDeModulosActivos > 5) {
            return super() * 0.8
        } else {
            return super()
        }
    }
    method esDePrestigioUniversal() = estaCertificado and
        cantDeModulosActivos > 3 and tecnologias.all({tecnologia => tecnologia.activa()})
}

class Etericos inherits Equipos {
    const nivelDeFluctuacionDimensional
    const cantDePortalesAbiertos

    method nivelDeFluctuacionDimensional() = nivelDeFluctuacionDimensional
    method cantDePortalesAbiertos() = cantDePortalesAbiertos
}
