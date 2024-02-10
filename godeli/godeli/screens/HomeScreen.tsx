import { NativeStackScreenProps } from '@react-navigation/native-stack';
import React from 'react'
import {  FlatList, Platform, Text, View } from 'react-native';
import { screenHomeStyles } from '../theme/screenHomeStyles';
import RecetaItem from '../components/RecetaItem';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import { useSafeAreaInsets } from "react-native-safe-area-context";
import SearchInput from '../components/SearchInput';

interface Props extends NativeStackScreenProps<any, any> {

}



const HomeScreen = (props: any, { navigation }: Props) => {

  console.log(props)
  return (
    <View style={
      screenHomeStyles.globalMargin
      }>
            <MaterialCommunityIcons name="face-man-profile" size={50} color="#FFCE80" style={screenHomeStyles.profileStyle}/>
      <Text style={screenHomeStyles.title}>Hola Christian</Text>
      <Text  style={screenHomeStyles.subtitle}>¿Que vas a cocinar hoy?</Text>
     <SearchInput/>
      <FlatList
        data={[
          { key: '1', name: 'Nicolas' },
          { key: '2', name: 'Rover plate' },
          { key: '3', name: 'Velze Sarsfield' },
        ]}
        numColumns={2}
        renderItem={({ item }) =>
          <RecetaItem recetaKey={item.key} recetaDesc={item.name} />
        }
      />

    </View>

  )
}

export default HomeScreen
