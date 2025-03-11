//
//  AppInfo.swift
//  Notes
//
//  Created by Gagandeep Dass Kaur on 10/3/25.
//
/*
 implementamos el 'ObservableObject' basicamente porque nuestra class 'AppInfo' va a tener estados '@Published' que van a ser manejados en la vista
 */

import Foundation

class AppInfo: ObservableObject {
    
    @Published var cards: [NCard] = [
        NCard(title: "Comprar Supermercado",
              text: "Leche, Pan, Huevos, Queso, Tomates.",
              type: .small,
              isFav: true),
        NCard(title: "Llamar a Juan",
              text: "Confirmar detalles de la reunión del viernes.",
              type: .small,
              isFav: false),
        NCard(title: "Ideas para Blog",
              text: "Escribir sobre las últimas tendencias en desarrollo iOS y SwiftUI.",
              type: .small,
              isFav: false),
        NCard(title: "Plan de Entrenamiento",
              text: "Lunes: Pecho y Tríceps\nMartes: Espalda y Bíceps\nMiércoles: Piernas\nJueves: Hombros\nViernes: Cardio",
              type: .medium,
              isFav: false),
        NCard(title: "Agenda Semanal",
              text: "Reuniones de equipo el lunes y miércoles. Presentación de proyecto el jueves.",
              type: .medium,
              isFav: false),
        NCard(title: "Libros para Leer",
              text: "1. 'SwiftUI for Beginners'\n2. 'Mastering Combine'\n3. 'iOS Development with Swift'",
              type: .medium,
              isFav: false),
        NCard(title: "Desarrollo de Aplicación",
              text: """
                  - **Objetivo:** Crear una aplicación de notas con múltiples vistas y funcionalidades.
                  
                  - **Características:**
                  1. Listado de notas.
                  2. Detalle de cada nota.
                  3. Marcar notas como favoritas.
                  4. Filtros para ver todas las notas o solo las favoritas.
                  5. Animaciones y transiciones suaves.
                  
                  - **Tecnologías:**
                  - SwiftUI
                  - Combine
                  - CoreData (opcional para persistencia)
                  
                  - **Próximos Pasos:**
                  - Implementar la navegación entre vistas.
                  - Añadir la funcionalidad para crear, editar y eliminar notas.
                  - Mejorar la interfaz de usuario con modifiers y efectos visuales.
                  """,
              type: .small,
              isFav: false),
        NCard(title: "Proyecto Personal",
              text: """
                  - **Descripción:** Desarrollar una aplicación de seguimiento de hábitos diarios.
                  
                  - **Características:**
                  1. Registro de hábitos.
                  2. Estadísticas y gráficos de progreso.
                  3. Notificaciones para recordar completar hábitos.
                  4. Integración con HealthKit.
                  
                  - **Objetivos a Largo Plazo:**
                  - Implementar sincronización con iCloud.
                  - Añadir funcionalidades sociales para compartir progreso.
                  - Optimizar la aplicación para diferentes dispositivos.
                  """,
              type: .medium,
              isFav: true),
        NCard(title: "Ideas de Diseño",
              text: "Explorar nuevas combinaciones de colores y fuentes para mejorar la estética de la aplicación.",
              type: .medium,
              isFav: false),
        NCard(title: "Tareas Pendientes",
              text: "1. Revisar el código de la vista de detalle.\n2. Optimizar las animaciones.\n3. Probar la aplicación en diferentes dispositivos.",
              type: .medium,
              isFav: false),
        NCard(title: "Notas de Reunión",
              text: "Discutir la implementación de nuevas funcionalidades y resolver bugs existentes.",
              type: .small,
              isFav: false),
    ]
    
    var favoriteCards: [NCard] {
        cards.filter { $0.isFav }
    }
    
    func createNote(card: NCard) {
        cards.append(card)
    }
    
    func toggleFavorite(card: NCard) {
        if let index = cards.firstIndex(where: { $0.id == card.id }) {
            cards[index].isFav.toggle()
        }
    }

}
