import * as NetInfo from 'expo-network';

const checkInternetConnection = async () => {
  const networkState = await NetInfo.getNetworkStateAsync();
  return networkState.isConnected;
};

export default {
  checkInternetConnection,
};