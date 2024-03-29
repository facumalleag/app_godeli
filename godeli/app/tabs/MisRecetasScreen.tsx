import { FontAwesome6, Ionicons } from '@expo/vector-icons'
import React from 'react'
import { Text, View } from 'react-native'
import { screenMisRecetasStyles } from '../../theme/screenMisRecetasStyles'
import { Link } from 'expo-router'

import { FadeInImage } from '../../components/FadeImage'
import useProfilePaginated from '../../hooks/useProfilePaginated'


const tieneRecetas=true // Flag para mostrar una pantalla u otra segun tenga recetas el usuario


const MisRecetasScreen = () => {
  const { foto } = useProfilePaginated()

  return (
    (tieneRecetas)?(
    <View style={
      screenMisRecetasStyles.globalMargin
    }>
      <Link href='/ProfileScreen' style={screenMisRecetasStyles.profileStyle}>
        <FadeInImage
          uri={foto}
          style={{
            height: 50,
            width: 50,
          }}
        />
      </Link>
      <Text style={screenMisRecetasStyles.title}>No tenés recetas</Text>
      <View style={screenMisRecetasStyles.iconContainer}>
        <FontAwesome6 name="face-meh" size={100} color="#129575" style={screenMisRecetasStyles.icon}  />
      </View>
      <Text style={screenMisRecetasStyles.addText}>Creá la tuya:</Text>
      <Link href='/AgregarRecetaScreen'  style={screenMisRecetasStyles.addIcon} >
        <Ionicons name='add-circle' size={70} color="#129575"
        />
      </Link>
    </View>
    ):
    <View style={
      screenMisRecetasStyles.globalMargin
    }>
       <Text style={screenMisRecetasStyles.title}>Tenés recetas en algun lugar</Text>
    </View>

  )
}

export default MisRecetasScreen
