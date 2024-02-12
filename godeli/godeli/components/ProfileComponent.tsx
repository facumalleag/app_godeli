import React from 'react'
import { MaterialCommunityIcons } from '@expo/vector-icons';
import { guardadoStyle } from '../theme/RecetasGuardadasStyle';
import { NativeStackScreenProps } from '@react-navigation/native-stack';

interface Props extends NativeStackScreenProps<any, any> { }


const ProfileComponent = ({ navigation }: Props) => {
  return (
    <MaterialCommunityIcons name="face-man-profile" size={50} color="#FFCE80" style={guardadoStyle.profileStyle} onPress={() => navigation.navigate('ProfileScreen')} />
  )
}

export default ProfileComponent
