import { configureStore } from '@reduxjs/toolkit';
import counterSlice from './slices/CounterSlices';
const store = configureStore({
    reducer: {
        counter: counterSlice.reducer,
        // otros slices
    }
});
export default store;