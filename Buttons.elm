import Html exposing (program, div, button, text)
import Html.Events exposing (onClick)

main = program {
           init = init,
           view = view,
           update = update,
           subscriptions = subscriptions
           }

type alias Model = {counter : Int}

type Msg = Increment Int | Decrement Int | Mul Int | Div Int

init = ({counter = 500}, Cmd.none)
       
view model = div [] [
        button [onClick <| Div 3] [text "/ 3"],
        button [onClick <| Increment 1] [text "+ 1"],
        button [onClick <| Increment 10] [text "+ 10"],
        div [][text <| toString model.counter],
        button [onClick <| Decrement 1] [text "- 1"],
        button [onClick <| Decrement 10] [text "- 10"],
        button [onClick <| Mul 3] [text "* 3"]]

update msg model = case msg of
                       Increment i -> ({model | counter = model.counter + i}, Cmd.none)
                       Decrement i -> ({model | counter = model.counter - i}, Cmd.none)
                       Mul i -> ({model | counter = model.counter * 3}, Cmd.none)
                       Div i -> ({model | counter = model.counter // 3}, Cmd.none)

subscriptions model = Sub.none
                                      
