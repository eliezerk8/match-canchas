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
  Estudiante.create!([
   {nombreestudiante: 'Daniel Andres',
    nem: '65',
    situacioneconomica: 'Clase Media',
    colegio: 'Hispano Americano',
    ranking: '450',
    carrera_id: (Carrera.find_by_nombrecarrera('Ingenieria en Computacion')).id ,
    fecha_nacimiento: '20/07/1999',
    rut: '18.464.127-5',
    telefono: '13254687',
    email: 'dmunozb@utem.cl',
    apellidopa: 'Muñoz',
    apellidoma: 'Berly'},

    {nombreestudiante: 'Joaquin Ignacio',
    nem: '60',
    situacioneconomica: 'Clase Media',
    colegio: 'Hispano Americano',
    ranking: '470',
    carrera_id: (Carrera.find_by_nombrecarrera('Ingenieria en Computacion')).id ,
    fecha_nacimiento: '08/11/1999',
    rut: '20.119.215-3',
    telefono: '12349876',
    email: 'jsepulveda@utem.cl',
    apellidopa: 'Sepulveda',
    apellidoma: 'Toro'},

    {nombreestudiante: 'David Ernesto',
    nem: '55',
    situacioneconomica: 'Clase Media',
    colegio: 'Hispano Americano',
    ranking: '520',
    carrera_id: (Carrera.find_by_nombrecarrera('Ingenieria en Computacion')).id ,
    fecha_nacimiento: '01/04/2000',
    rut: '20.229.004-3',
    telefono: '19283764',
    email: 'dvergara@utem.cl',
    apellidopa: 'Vergara',
    apellidoma: 'Fuentes'},

    {nombreestudiante: 'Francisco Ignacio',
    nem: '50',
    situacioneconomica: 'Clase Media',
    colegio: 'Hispano Americano',
    ranking: '57',
    carrera_id: (Carrera.find_by_nombrecarrera('Ingenieria en Computacion')).id ,
    fecha_nacimiento: '18/03/1999',
    rut: '20.162.443-6',
    telefono: '29325001',
    email: 'firarrazabal@utem.cl',
    apellidopa: 'Irarrazabal',
    apellidoma: 'Hansen'},

    {nombreestudiante: 'Marcos Nicolas',
    nem: '45',
    situacioneconomica: 'Clase Media',
    colegio: 'Hispano Americano',
    ranking: '620',
    carrera_id: (Carrera.find_by_nombrecarrera('Ingenieria en Computacion')).id ,
    fecha_nacimiento: '18/03/1999',
    rut: '20.166.043-2',
    telefono: '17283945',
    email: 'mcofre@utem.cl',
    apellidopa: 'Cofre',
    apellidoma: 'Fuentes'}

         ])