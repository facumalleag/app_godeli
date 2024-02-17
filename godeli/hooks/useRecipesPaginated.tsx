import React, { useEffect, useRef, useState } from 'react'
import { recipesApi } from '../api/recipesApi'


const token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsImlhdCI6MTcwODIwNDMwNTIwNiwiZXhwIjoxNzA4MjA3OTA1MjA2fQ.OuwvIH48NGNA-ruPXK81re0JIXIVcdcdXK6_rPFqJg0"


const useRecipesPaginated = () => {

    const [nombre, setNombre] = useState('')
    const [email, setEmail] = useState('')
    const [foto, setFoto ]= useState('')
  
    useEffect(() => {
        getRecipes()
    }, [])
  

    const nextPageUrl = useRef("http://18.224.38.52:3000/recipes/107")
    const getRecipes = async () => {
        await recipesApi.get(nextPageUrl.current, {
           headers: {
             Authorization: `Bearer ${token}`
           }
         }).then(resp =>{
           setEmail(resp.data.data[0].correo_electronico)
           setFoto(resp.data.data[0].url_imagen_perfil)
           setNombre(resp.data.data[0].nombre)
         }
         )
         //mapProfile(resp.data.data)
       }

  return (
    <div>
      
    </div>
  )
}

export default useRecipesPaginated
