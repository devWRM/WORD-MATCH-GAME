import { combineReducers } from 'redux';
import { cardsReducer } from './cardsReducer';
import { gameboardsReducer } from './gameboardsReducer';
import { gamesReducer } from './gamesReducer';


export const rootReducer = combineReducers({
    cards: cardsReducer,
    gameboards: gameboardsReducer,
    games: gamesReducer

})