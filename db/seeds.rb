# Creación de compañías de ejemplo
Company.create!(
  [
    {
      name: "Compañía A",
      nit: "1234567890",
      phone: "123-456-7890",
      address: "Calle Falsa 123",
      email: "contacto@companiaa.com"
    },
    {
      name: "Compañía B",
      nit: "0987654321",
      phone: "098-765-4321",
      address: "Avenida Siempre Viva 456",
      email: "contacto@companiab.com"
    },
    {
      name: "Compañía C",
      nit: "1122334455",
      phone: "112-233-4455",
      address: "Boulevard de los Sueños Rotos 789",
      email: "contacto@companiac.com"
    }
  ]
)

# Creación de proyectos de ejemplo
Project.create!(
  [
    {
      name: "Proyecto 1 - Compañía A",
      description: "Descripción del proyecto 1 de la compañía A",
      company_id: 1 # Asociar con la compañía A
    },
    {
      name: "Proyecto 1 - Compañía B",
      description: "Descripción del proyecto 1 de la compañía B",
      company_id: 2 # Asociar con la compañía B
    },
    {
      name: "Proyecto 2 - Compañía B",
      description: "Descripción del proyecto 2 de la compañía B",
      company_id: 2 # Asociar con la compañía B
    }
  ]
)

# Creación de historias de usuario de ejemplo
Story.create!(
  [
    {
      name: "Historia de Usuario 1 - Proyecto 1 - Compañía A",
      description: "Descripción de la Historia de Usuario 1",
      project_id: 1 # Asociar con el proyecto 1
    },
    {
      name: "Historia de Usuario 2 - Proyecto 1 - Compañía A",
      description: "Descripción de la Historia de Usuario 2",
      project_id: 1 # Asociar con el proyecto 1
    },
    {
      name: "Historia de Usuario 3 - Proyecto 1 - Compañía A",
      description: "Descripción de la Historia de Usuario 3",
      project_id: 1 # Asociar con el proyecto 1
    },
    {
      name: "Historia de Usuario 1 - Proyecto 1 - Compañía B",
      description: "Descripción de la Historia de Usuario 1",
      project_id: 2 # Asociar con el proyecto 1
    },
    {
      name: "Historia de Usuario 2 - Proyecto 1 - Compañía B",
      description: "Descripción de la Historia de Usuario 2",
      project_id: 2 # Asociar con el proyecto 1
    },
    {
      name: "Historia de Usuario 3 - Proyecto 1 - Compañía B",
      description: "Descripción de la Historia de Usuario 3",
      project_id: 2 # Asociar con el proyecto 1
    },
    {
      name: "Historia de Usuario 1 - Proyecto 2 - Compañía B",
      description: "Descripción de la Historia de Usuario 1",
      project_id: 3 # Asociar con el proyecto 2
    },
    {
      name: "Historia de Usuario 2 - Proyecto 2 - Compañía B",
      description: "Descripción de la Historia de Usuario 2",
      project_id: 3 # Asociar con el proyecto 2
    },
    {
      name: "Historia de Usuario 3 - Proyecto 2 - Compañía B",
      description: "Descripción de la Historia de Usuario 3",
      project_id: 3 # Asociar con el proyecto 2
    }
  ]
)

# Creación de tickets de ejemplo
Ticket.create!(
  [
    {
      name: "Ticket 1 - Historia 1 - Proyecto 1 - Compañía A",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 1
    },
    {
      name: "Ticket 2 - Historia 1 - Proyecto 1 - Compañía A",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 1
    },
    {
      name: "Ticket 3 - Historia 1 - Proyecto 1 - Compañía A",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 1
    },
    {
      name: "Ticket 4 - Historia 1 - Proyecto 1 - Compañía A",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 1
    },
    {
      name: "Ticket 1 - Historia 2 - Proyecto 1 - Compañía A",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 2
    },
    {
      name: "Ticket 2 - Historia 2 - Proyecto 1 - Compañía A",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 2
    },
    {
      name: "Ticket 3 - Historia 2 - Proyecto 1 - Compañía A",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 2
    },
    {
      name: "Ticket 4 - Historia 2 - Proyecto 1 - Compañía A",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 2
    },
    {
      name: "Ticket 1 - Historia 3 - Proyecto 1 - Compañía A",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 3
    },
    {
      name: "Ticket 2 - Historia 3 - Proyecto 1 - Compañía A",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 3
    },
    {
      name: "Ticket 3 - Historia 3 - Proyecto 1 - Compañía A",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 3
    },
    {
      name: "Ticket 4 - Historia 3 - Proyecto 1 - Compañía A",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 3
    },
    {
      name: "Ticket 1 - Historia 1 - Proyecto 1 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 4
    },
    {
      name: "Ticket 2 - Historia 1 - Proyecto 1 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 4
    },
    {
      name: "Ticket 3 - Historia 1 - Proyecto 1 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 4
    },
    {
      name: "Ticket 4 - Historia 1 - Proyecto 1 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 4
    },
    {
      name: "Ticket 1 - Historia 2 - Proyecto 1 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 5
    },
    {
      name: "Ticket 2 - Historia 2 - Proyecto 1 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 5
    },
    {
      name: "Ticket 3 - Historia 2 - Proyecto 1 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 5
    },
    {
      name: "Ticket 4 - Historia 2 - Proyecto 1 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 5
    },
    {
      name: "Ticket 1 - Historia 3 - Proyecto 1 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 6
    },
    {
      name: "Ticket 2 - Historia 3 - Proyecto 1 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 6
    },
    {
      name: "Ticket 3 - Historia 3 - Proyecto 1 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 6
    },
    {
      name: "Ticket 4 - Historia 3 - Proyecto 1 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 6
    },
    {
      name: "Ticket 1 - Historia 1 - Proyecto 2 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 7
    },
    {
      name: "Ticket 2 - Historia 1 - Proyecto 2 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 7
    },
    {
      name: "Ticket 3 - Historia 1 - Proyecto 2 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 7
    },
    {
      name: "Ticket 4 - Historia 1 - Proyecto 2 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 7
    },
    {
      name: "Ticket 1 - Historia 2 - Proyecto 2 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 8
    },
    {
      name: "Ticket 2 - Historia 2 - Proyecto 2 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 8
    },
    {
      name: "Ticket 3 - Historia 2 - Proyecto 2 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 8
    },
    {
      name: "Ticket 4 - Historia 2 - Proyecto 2 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 8
    },
    {
      name: "Ticket 1 - Historia 3 - Proyecto 2 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 1",
      story_id: 9
    },
    {
      name: "Ticket 2 - Historia 3 - Proyecto 2 - Compañía B",
      status: "En Proceso",
      comments: "Comentario del Ticket 2",
      story_id: 9
    },
    {
      name: "Ticket 3 - Historia 3 - Proyecto 2 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 3",
      story_id: 9
    },
    {
      name: "Ticket 4 - Historia 3 - Proyecto 2 - Compañía B",
      status: "Finalizado",
      comments: "Comentario del Ticket 4",
      story_id: 9
    }
  ]
)

