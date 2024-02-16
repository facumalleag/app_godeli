import { useEffect, useRef } from 'react';
import { profileApi } from "../api/profileApi"


const useProfilePaginated = () => {
 //const url="https://jsonplaceholder.typicode.com/posts"
 const nextPageUrl= useRef("https://jsonplaceholder.typicode.com/posts")

 const loadProfile = async () => {
    try {
        const resp= await profileApi.get(nextPageUrl.current)
        console.log(resp.data)
      } catch (error) {
        console.error('Error fetching data:', error);
      }
 }

 useEffect(() => {
   loadProfile()
 }, [])

 
}

export default useProfilePaginated
