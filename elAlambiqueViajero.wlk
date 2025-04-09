object luke{
    var cantidadViajes = 0
    var recuerdo = null
    var transporte = null
    

    method cantidadViajes() = cantidadViajes 
    method vehiculoUsado(vehiculo)= vehiculo

    method viajar(lugar,vehiculo){
        if (lugar.puedeLlegar(vehiculo)) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculo.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
}

object alambiqueVeloz {
    var rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
}

object zapatillasConRuedas {

    var usosRueda = 50000
    var energia = 100
    const gastoEnergia = 50
    const friccionRueda = 100

    method tieneCombustible() = usosRueda >= friccionRueda
    method consumirCombustible() {
        energia = energia - gastoEnergia
        usosRueda = usosRueda - friccionRueda
    }
    
    method rapido() = energia >= 50
}

object paris {
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar(vehiculo) =  vehiculo.tieneCombustible() 
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar(vehiculo) =  vehiculo.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar(vehiculo) = true
}

object lasVegas{
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo) = homenaje.puedeLlegar()
}
