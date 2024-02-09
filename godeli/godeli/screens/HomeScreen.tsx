import { NativeStackScreenProps } from '@react-navigation/native-stack';
import React from 'react'
import { Button, Text, View } from 'react-native';
import { screenStyles } from '../theme/screenTheme';

interface Props extends NativeStackScreenProps<any,any>{
  
}

const HomeScreen = (props:any,{navigation}:Props) => {
  console.log(props)
  return (
    <View style={screenStyles.globalMargin}>
      <Text style={{alignSelf:'center'}}>HomeScreen</Text>
      <Button
      title='Volver al Login'
      onPress={()=>{
        
      }}
      />
    </View>

  )
}

export default HomeScreen
