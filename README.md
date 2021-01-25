Review mojej pracy:

Tak, więc projekt wymagał ode mnie zapoznania się z komendami rails. Nie znając tej technologii, uważam, że całkiem sprawnie sobie poradziłem.
Stworzyłem własny controller do płatności, wykorzystałem api stripe.com. Ta funkcja działa perfekcyjnie.
     Po zakupie, dodaje nowy ticket, który można wyświetlić w /tickets, po kliknięciu 'show' można zobaczyć wnętrze,.  
     Zmniejsza liczbę parametrów tickets po kupnie.

Chciałem dodać możliwość automatycznego wysyłania rachunku na maila,tryb testowy api stripe.com nie obsługuje tej funkcji. Dokładniejsze potwierdzenie kupna ticketu na event, mogę wysyłać manualnie przez dashboard stripe.com

Dane karty bankowej do testowej operacji
     Number 	          Brand 	CVC 	           Date
     4242424242424242 	Visa 	Any 3 digits 	Any future date

Repozytorium ma prawie wszystkie komentarze w języku angielskim.

       Podpięte zostały ewentualne screeny jak co działa oraz wyjaśnienia co na jakim etapie co robiłem, jakie podpowiedzi znalazłem i linki do stackoverflow czy dokumentacji stripe.com


Pozwoliłem sobie na małą kreatywność i dodałem kolejne pole do każdego z eventów.

       Jest nimi 'tickets' - liczba dostępnych ticketów,
                      'price' - koszt

     Część commitów ma komentarze a w nich screeny.

Użyłem sekcji Issues na githubie, aby rozpisać zadany problem, pomysły jak rozwiązać itd.
Dwa z nich już są zamknięte, pozostał tylko jeden, "how to deploy api"

Płatność, obsługa eventów, obsługa ticketów jest.

Wyświetlanie formatu json 
urls:  localhost:3000/events.json, localhost:3000/events/1.json , localhost:3000/tickets.json, localhost:3000/tickets/1.json etc.

Nie wystarczyło mi czasu, aby przerobić to na api, ale można pobrać dane używając jednego z url
url = "http://..."
data = JSON.parse(open(url).read)
source : https://stackoverflow.com/questions/23319437/rails-fetch-json-data-from-remote-url-api-call

Aplikacja została postawiona na heroku. https://rocky-basin-27096.herokuapp.com/ Jest w trakcie fazie testów.
