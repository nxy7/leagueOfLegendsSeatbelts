# Why seatbelts
This project is made as ML learning opportunity for me, with the sole goal of reducing amount of my deaths in League of Legends. I stream League of Legends pretty often, so I've figured that with so much video material it should be possible to make AI predicting I'll die within ~10 seconds. If I get into *danger zone* the AI will notify me via __external stimulus__ aka. shocking me with electricity.

# Structure of the repository
This repository is made from 3 separate *subprojects*

## Data gathering
League of legends exposes REST api, that I can use to timestamp moments I die in the game. I also need to link that to livestream timestamp somehow (still need to figure it out, but I have some ideas).

## Machine Learning
Next part of the project is making ML model that's actually capable of predicting incoming death. I'm not entirely sure how capable such model can be, but there are several indicators of incoming deaths like - HP bar getting lower, more enemies closeby etc. etc. If ML will be capable of getting those informations from video it might work.

## Live Notifications
Last part is using intel from ML model and alerting me about incoming death. This will be done with ESP32 S2 microcontroller controlling *alarm led lights* and *electrocuting* me if I die regardless. 
