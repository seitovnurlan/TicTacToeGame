// main.swift  TicTacToeGame
//
//  Created by Nurlan Seitov on 8/2/23.

// - Составить игру крестики и нолики используя инструменты ООП.
// - Создать класс Game подписать на протокол Menu c функцией startGame(), endGame().
// - Создать 2 наследника Игра против человека и Игра против бота.
// - Переопределить startGame в наследниках и задать внутри соответствующую логику.
// - В игре против человека должны создаваться ридлайны для 2 игроков по очереди.
// - В игре против бота, только ридлайны для 1 пользователя, остальное компьютер ставит рандомно.

//  Как реализовать логику. Создайте 3 массива и принтуйте постоянно.
//
//[“”, “”, “”]
//[“”, “”, “”]
//[“”, “”, “”]
//
//Доступ к индексам у вас есть. Условные конструкции тоже знаете.

//var столбец = readline() // 3
//var строка = readline() // 1
//
//[" ", " ", "X"]
//[" ", " ", " " ]
//[" ", " ", " " ]

import Foundation

var player1 = GameAgainstHuman(playerName: "Nurlan", array1: ["","",""], array2: ["","",""], array3: ["","",""])
var player2 = PlayingAgainsBot(playerName: "Nurlan", array1: ["","",""], array2: ["","",""], array3: ["","",""])


//player1.startGame()  // Игра против человека
player2.startGame()    //Игра против ботв


