//
//  HistoricalEvents.swift
//  Bout Time
//
//  Created by Marcel Busschers on 2017/08/31.
//  Copyright © 2017 Marcel Busschers. All rights reserved.
//

import Foundation

struct event {
    let year: Int
    let description: String
    let webViewURL: URL
    
    init(year: Int, description: String, URLString: String) {
        self.description = description
        self.year = year
        self.webViewURL = URL(fileURLWithPath: URLString)
    }
}

var historicalEvents: [event] = [
    
    event(year: 1901, description: "Queen Victoria's Funeral", URLString: "https://en.wikipedia.org/wiki/Funeral_of_Queen_Victoria"),
    event(year: 1903, description: "Wright Brother's First Flight", URLString: "http://www.eyewitnesstohistory.com/wright.htm"),
    event(year: 1913, description: "Emily Davison Throws Herself Under The Kings Horse", URLString: "https://www.theguardian.com/society/2013/may/26/emily-davison-suffragette-death-derby-1913"),
    event(year: 1917, description: "Abdication of the Tsar Nikolas ii", URLString: "https://en.wikipedia.org/wiki/Nicholas_II_of_Russia"),
    event(year: 1921, description: "Irish Free State Treaty Signed", URLString: "http://www.history.com/this-day-in-history/irish-free-state-declared"),
    event(year: 1925, description: "Suzanne Lenglen Breaks Wimbledon Record", URLString: "http://www.independent.co.uk/life-style/history/a-day-that-shook-the-world-suzanne-lenglen-breaks-a-wimbledon-record-2232611.html"),
    event(year: 1926, description: "Start Of UK General Strike", URLString: "https://en.wikipedia.org/wiki/1926_United_Kingdom_general_strike"),
    event(year: 1927, description: "Charles Lindbergh Flies the Atlantic Solo", URLString: "http://www.eyewitnesstohistory.com/lindbergh.htm"),
    event(year: 1930, description: "American Golfer Bobby Jones Wins Grand Slam", URLString: "http://www.independent.co.uk/life-style/history/a-day-that-shook-the-world-american-golfer-bobby-jones-wins-grand-slam-2232327.html"),
    event(year: 1933, description: "Hitler Becomes German Chancellor", URLString: "http://www.history.com/this-day-in-history/adolf-hitler-is-named-chancellor-of-germany"),
    event(year: 1936, description: "King Edward VIII Abdicates", URLString: "https://en.wikipedia.org/wiki/Edward_VIII_abdication_crisis"),
    event(year: 1937, description: "Hindenburg Airship Crash", URLString: "https://en.wikipedia.org/wiki/Hindenburg_disaster"),
    event(year: 1938, description: "Hitler Annexes Austria", URLString: "http://www.history.com/this-day-in-history/germany-annexes-austria"),
    event(year: 1939, description: "Germany Invades Poland", URLString: "https://en.wikipedia.org/wiki/Invasion_of_Poland"),
    event(year: 1940, description: "Evacuation of Dunkirk", URLString: "https://en.wikipedia.org/wiki/Dunkirk_evacuation"),
    event(year: 1940, description: "London Blitz Begins", URLString: "http://www.history.com/this-day-in-history/the-blitz-begins"),
    event(year: 1941, description: "Pearl Harbour Attacked", URLString: "https://en.wikipedia.org/wiki/Attack_on_Pearl_Harbor"),
    event(year: 1943, description: "Fall of Stalingrad", URLString: "https://en.wikipedia.org/wiki/Battle_of_Stalingrad"),
    event(year: 1944, description: "D-Day Landings", URLString: "https://en.wikipedia.org/wiki/Normandy_landings"),
    event(year: 1944, description: "Liberation of Paris", URLString: "https://en.wikipedia.org/wiki/Liberation_of_Paris"),
    event(year: 1945, description: "Churchill, Stalin and Roosevelt Meet at Yalta", URLString: "https://en.wikipedia.org/wiki/Yalta_Conference"),
    event(year: 1945, description: "Germans Surrender to Montgomery", URLString: "https://en.wikipedia.org/wiki/German_surrender_at_Lüneburg_Heath"),
    event(year: 1945, description: "VE Day Celebrations", URLString: "https://en.wikipedia.org/wiki/Victory_in_Europe_Day"),
    event(year: 1945, description: "Labour's Landslide Election Win", URLString: "https://en.wikipedia.org/wiki/United_Kingdom_general_election,_1945"),
    event(year: 1945, description: "Hiroshima Atomic Bomb", URLString: "https://en.wikipedia.org/wiki/Atomic_bombings_of_Hiroshima_and_Nagasaki"),
    event(year: 1947, description: "India and Pakistan Gain Independence", URLString: "http://www.history.com/this-day-in-history/india-and-pakistan-win-independence"),
    event(year: 1948, description: "Berlin Airlift Begins", URLString: "http://www.history.com/this-day-in-history/berlin-airlift-begins"),
    event(year: 1949, description: "Mao's Communists Take Over China", URLString: "https://en.wikipedia.org/wiki/Chinese_Communist_Revolution"),
    event(year: 1950, description: "Korean War Starts", URLString: "https://en.wikipedia.org/wiki/Korean_War"),
    event(year: 1954, description: "Launch of First Nuclear Submarine", URLString: "http://www.independent.co.uk/life-style/history/a-day-that-shook-the-world-first-nuclear-submarine-launched-2189571.html"),
    event(year: 1954, description: "Roger Bannister Breaks the 4 Minute Mile", URLString: "https://en.wikipedia.org/wiki/Four-minute_mile"),
    event(year: 1955, description: "Le Mans 24 Hour Race Disaster", URLString: "https://en.wikipedia.org/wiki/1955_Le_Mans_disaster"),
    event(year: 1958, description: "Manchester United Players Die in Munich Air Crash", URLString: "https://en.wikipedia.org/wiki/Munich_air_disaster"),
    event(year: 1958, description: "Pele's World Cup Final Performance", URLString: "https://en.wikipedia.org/wiki/1958_FIFA_World_Cup_Final"),
    event(year: 1961, description: "First Man in Space", URLString: "https://en.wikipedia.org/wiki/Yuri_Gagarin"),
    event(year: 1961, description: "Berlin Wall Erected", URLString: "http://www.bbc.co.uk/history/places/berlin_wall"),
    event(year: 1962, description: "Cuban Missile Crisis", URLString: "https://en.wikipedia.org/wiki/Cuban_Missile_Crisis"),
    event(year: 1963, description: "Martin Luther King Delivers His 'I have a dream' speech", URLString: "https://en.wikipedia.org/wiki/I_Have_a_Dream"),
    event(year: 1963, description: "JFK Assassinated", URLString: "https://en.wikipedia.org/wiki/Assassination_of_John_F._Kennedy"),
    event(year: 1964, description: "Beatlemania Arrives", URLString: "https://en.wikipedia.org/wiki/Beatlemania"),
    event(year: 1966, description: "Coal Tip Buries Hundreds of Children in Aberfan", URLString: "https://en.wikipedia.org/wiki/Aberfan_disaster"),
    event(year: 1967, description: "Donald Campbell Dies in Bluebird Crash", URLString: "https://en.wikipedia.org/wiki/Donald_Campbell"),
    event(year: 1967, description: "The Six-Day War Begins", URLString: "https://en.wikipedia.org/wiki/Six-Day_War"),
    event(year: 1968, description: "Violent Anti-Vietnam Riots in London", URLString: "https://www.theguardian.com/theguardian/2010/mar/18/vietnam-war-protests-london-trafalgarsquare"),
    event(year: 1969, description: "Concorde Flies for the First Time", URLString: "https://en.wikipedia.org/wiki/Concorde"),
    event(year: 1969, description: "Armstrong Sets Foot on the Moon", URLString: "https://en.wikipedia.org/wiki/Apollo_11"),
    event(year: 1972, description: "Bloody Sunday in Northern Ireland", URLString: "https://en.wikipedia.org/wiki/Bloody_Sunday_(1972)"),
    event(year: 1974, description: "Nixon Resigns in Shame", URLString: "http://watergate.info"),
    event(year: 1979, description: "Exiled Religious Leader Ayatollah Khomeini returns to Iran", URLString: "https://en.wikipedia.org/wiki/Ruhollah_Khomeini%27s_return_to_Iran"),
    event(year: 1979, description: "Lord Mountbatten Assassinated by IRA", URLString: "https://en.wikipedia.org/wiki/Louis_Mountbatten,_1st_Earl_Mountbatten_of_Burma"),
    event(year: 1984, description: "Ethiopian Famine", URLString: "https://en.wikipedia.org/wiki/1983–1985_famine_in_Ethiopia"),
    event(year: 1985, description: "Heysel Stadium Disaster", URLString: "https://en.wikipedia.org/wiki/Heysel_Stadium_disaster"),
    event(year: 1986, description: "Challenger Spacecraft Explodes", URLString: "https://en.wikipedia.org/wiki/Space_Shuttle_Challenger_disaster"),
    event(year: 1986, description: "Chernoybl Nuclear Disaster", URLString: "https://en.wikipedia.org/wiki/Chernobyl_disaster"),
    event(year: 1987, description: "Zeebrugge Ferry Disaster", URLString: "https://en.wikipedia.org/wiki/MS_Herald_of_Free_Enterprise"),
    event(year: 1988, description: "Lockerbie Pan-Am Jet Explosion", URLString: "https://en.wikipedia.org/wiki/Pan_Am_Flight_103"),
    event(year: 1989, description: "Hillsborough Disaster", URLString: "https://en.wikipedia.org/wiki/Hillsborough_disaster"),
    event(year: 1989, description: "Exxon Valdez Oil Spill", URLString: "https://en.wikipedia.org/wiki/Exxon_Valdez_oil_spill"),
    event(year: 1989, description: "Tiananmen Square Massacre", URLString: "https://en.wikipedia.org/wiki/Tiananmen_Square_protests_of_1989"),
    event(year: 1989, description: "Fall of Berlin Wall", URLString: "http://www.history.com/topics/cold-war/berlin-wall"),
    event(year: 1989, description: "Romanian Dictator Overthrown", URLString: "https://en.wikipedia.org/wiki/Romanian_Revolution"),
    event(year: 1990, description: "Nelson Mandela Released from Prison", URLString: "https://en.wikipedia.org/wiki/Nelson_Mandela"),
    event(year: 1990, description: "Operation Desert Storm - Start of Gulf War", URLString: "https://en.wikipedia.org/wiki/Gulf_War"),
    event(year: 1997, description: "Princess Diana Dies in Paris Car Crash", URLString: "https://en.wikipedia.org/wiki/Death_of_Diana,_Princess_of_Wales"),
    event(year: 1997, description: "Funeral of Diana, Princess of Wales", URLString: "https://en.wikipedia.org/wiki/Funeral_of_Diana,_Princess_of_Wales"),
    event(year: 2001, description: "9/11 - A Day that Shook the World", URLString: "https://en.wikipedia.org/wiki/September_11_attacks"),
    event(year: 2003, description: "The Capture of Saddam Hussein", URLString: "https://en.wikipedia.org/wiki/Operation_Red_Dawn"),
    event(year: 2004, description: "Beslan School Massacre, Dramatic Scenes", URLString: "https://en.wikipedia.org/wiki/Beslan_school_siege"),
    event(year: 2004, description: "Facebook Founded", URLString: "https://en.wikipedia.org/wiki/Facebook"),
    event(year: 2004, description: "Indian Ocean Earthquake and Tsunami Disaster", URLString: "https://en.wikipedia.org/wiki/2004_Indian_Ocean_earthquake_and_tsunami"),
    event(year: 2005, description: "Hurricane Katrina", URLString: "https://en.wikipedia.org/wiki/Hurricane_Katrina"),
    event(year: 2007, description: "Apple unveils iPhone", URLString: "https://www.macworld.com/article/1054769/smartphones/iphone.html"),
    event(year: 2008, description: "Global Financial Crisis", URLString: "https://en.wikipedia.org/wiki/Financial_crisis_of_2007–2008"),
    event(year: 2008, description: "Barack Obama Elected as The First Black President of America", URLString: "https://www.theguardian.com/world/2008/nov/05/uselections20084"),
    event(year: 2011, description: "Japanese Earthquake and Tsunami", URLString: "https://en.wikipedia.org/wiki/2011_Tōhoku_earthquake_and_tsunami"),
    event(year: 2011, description: "The Death of Osama Bin Laden", URLString: "https://en.wikipedia.org/wiki/Death_of_Osama_bin_Laden"),
    event(year: 2013, description: "Nelson Mandela Dies", URLString: "https://en.wikipedia.org/wiki/Death_of_Nelson_Mandela"),
    event(year: 2014, description: "Malaysian Airliner MH370 Vanishes Without a Trace", URLString: "https://en.wikipedia.org/wiki/Malaysia_Airlines_Flight_370")
    
]
























