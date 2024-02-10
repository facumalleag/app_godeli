import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import HomeScreen from '../screens/HomeScreen';
import FavoritosScreen from '../screens/FavoritosScreen';
import MisRecetasScreen from '../screens/MisRecetasScreen';
import { MaterialCommunityIcons, Feather } from '@expo/vector-icons';
import { Fontisto } from '@expo/vector-icons';

const Tab = createBottomTabNavigator();

export function TabNavigator() {
    return (
        <Tab.Navigator
        
            initialRouteName='HomeScreen'
            screenOptions={{
                headerShown: false,
                tabBarShowLabel: false,
                tabBarStyle: {
                    borderTopLeftRadius: 20,
                    borderTopRightRadius: 20,
                    borderLeftWidth: 0.2,
                    borderRightWidth: 0.2,
                },
            }}
        >
            <Tab.Screen name="HomeScreen" component={HomeScreen} options={{ 
                tabBarIcon: ({ focused }) => {
                    return <Feather name="home" size={30} color={
                        focused ? "#129575" : "#EAEAEA"
                    } />
                }
            }}
            />
            <Tab.Screen name="MisRecetas" component={MisRecetasScreen} options={{
                tabBarIcon: () => {
                    return <MaterialCommunityIcons name="chef-hat" size={35} color='white'
                        style={{
                            borderRadius: 90,
                            borderColor: '#129575',
                            width: 70,
                            height: 70,
                            borderWidth: 8,
                            backgroundColor: '#129575',
                            textAlign: 'center',
                            textAlignVertical: 'center',
                            marginBottom: 25,
                        }}
                    />
                }
            }}

            />
            <Tab.Screen name="Favoritos" component={FavoritosScreen} options={{
                tabBarIcon: ({ focused }) => {
                    return <Fontisto name="favorite" size={30} color={
                        focused ? "#129575" : "#EAEAEA"
                    } />
                }
            }}
            />
        </Tab.Navigator>
    );
}