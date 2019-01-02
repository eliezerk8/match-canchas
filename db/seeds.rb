   Rol.create!([
                {descripcion: 'Administrador'},
                {descripcion: 'Jefe de Carrera'},
                {descripcion: 'Sicologo'},
                {descripcion: 'Asistente Social'},
                {descripcion: 'Tutor'},

   ])

   Facultad.create!([
                {nombrefacultad: 'Ingenieria'}

   ])

   Carrera.create!([
                {nombrecarrera: 'Ingeniería Civil en Computación',codigo: "21041",facultad_id: (Facultad.find_by_nombrefacultad('Ingenieria')).id},
                {nombrecarrera: 'Ingeniería en Computación',codigo: "21030",facultad_id: (Facultad.find_by_nombrefacultad('Ingenieria')).id}

   ])
   

   User.create!([{
                nombre: 'Gerson Sebastian',
                apellidopa: 'Burgos',
                apellidoma: 'Rogers',
                rut: '18.740.172-0',
                fecha_nacimiento: '12/05/1990',
                telefono: '29325001',
                email: 'admin@utem.cl',
                password: '123456',
                password_confirmation: '123456',
                rol_id: (Rol.find_by_descripcion('Administrador')).id,
                facultad_id: (Facultad.find_by_nombrefacultad('Ingenieria')).id
  }])