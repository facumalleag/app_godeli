import { MaterialCommunityIcons,FontAwesome6,Ionicons } from '@expo/vector-icons'
import React from 'react'
import { Alert, Text, TouchableOpacity, View } from 'react-native'
import { screenMisRecetasStyles } from '../theme/screenMisRecetasStyles'

const onButtonPress =()=>{
  Alert.alert('button pressed')
}

const MisRecetasScreen = () => {
  return (
    <View style={
      screenMisRecetasStyles.globalMargin
    }>
      <MaterialCommunityIcons name="face-man-profile" size={50} color="#FFCE80" style={screenMisRecetasStyles.profileStyle} />
      <Text style={screenMisRecetasStyles.title}>No tenés recetas</Text>
      <View style={screenMisRecetasStyles.iconContainer}>
        <FontAwesome6 name="face-meh" size={100} color="#129575" style={screenMisRecetasStyles.icon} />
      </View>
      <Text style={screenMisRecetasStyles.addText}>Creá la tuya:</Text>
      <TouchableOpacity onPress={onButtonPress}>
        <Ionicons name='add-circle' size={70}  color="#129575" style={screenMisRecetasStyles.addIcon}/>
      </TouchableOpacity>


    </View>
  )
}

export default MisRecetasScreen
