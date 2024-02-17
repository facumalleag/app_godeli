import { useEffect, useRef, useState } from 'react';
import { profileApi } from "../api/profileApi"

const token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsImlhdCI6MTcwODIwNDMwNTIwNiwiZXhwIjoxNzA4MjA3OTA1MjA2fQ.OuwvIH48NGNA-ruPXK81re0JIXIVcdcdXK6_rPFqJg0"

const useProfilePaginated = () => {
  const [nombre, setNombre] = useState('')
  const [email, setEmail] = useState('')
  const [foto, setFoto ]= useState('')

  useEffect(() => {
    getProfile()
  }, [])

  //const url="https://jsonplaceholder.typicode.com/posts"
  const nextPageUrl = useRef("http://18.224.38.52:3000/api/v1/users/me")


  const getProfile = async () => {
   await profileApi.get(nextPageUrl.current, {
      headers: {
        Authorization: `Bearer ${token}`
      }
    }).then(resp =>{
      
      setEmail(resp.data.data[0].correo_electronico)
      setFoto(resp.data.data[0].url_imagen_perfil)
      setNombre(resp.data.data[0].nombre)
    }
    )
  }


  return{
    nombre,email,foto
  }


}

export default useProfilePaginated
