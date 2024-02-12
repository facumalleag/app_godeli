import { NativeStackScreenProps } from '@react-navigation/native-stack'
import React from 'react'
import { FlatList, Text, View } from 'react-native'
import RecetaItemGuardada from '../components/RecetaItemGuardada'
import { guardadoStyle } from '../theme/RecetasGuardadasStyle';
import { MaterialCommunityIcons } from '@expo/vector-icons';

interface Props extends NativeStackScreenProps<any, any> { }

const FavoritosScreen = ({ navigation }: Props) => {
  return (
    <View style={
      guardadoStyle.globalMargin
    }>
      <View style={{}}>
      <MaterialCommunityIcons name="face-man-profile" size={50} color="#FFCE80" style={guardadoStyle.profileStyle} onPress={() => navigation.navigate('ProfileScreen')} />
        <Text style={guardadoStyle.title}>Recetas Guardadas</Text>
      </View>
      <FlatList
        data={[
          { key: '1', name: 'Nicolas' },
          { key: '2', name: 'Rover plate' },
          { key: '3', name: 'Velze Sarsfield' },
        ]}
        renderItem={({ item }) =>
          <RecetaItemGuardada recetaKey={item.key} recetaDesc={item.name} />
        }
      />

    </View>
  )
}

export default FavoritosScreen
