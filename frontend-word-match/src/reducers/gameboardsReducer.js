export const gameboardsReducer = (state = [], action) => {
    switch(action.type) {
        case 'FETCH_GAMEBOARDS':
            return action.payload
        default:
            return state
    }
}