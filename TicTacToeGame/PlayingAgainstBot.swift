//  PlayingAgainstBot.swift   TicTacToeGame
//  Игра против бота
//  Created by Nurlan Seitov on 8/2/23.
//
// - В игре против бота, только ридлайны для 1 пользователя, остальное компьютер ставит рандомно.

import Foundation

class PlayingAgainsBot: Game {
    
    override init(playerName: String, array1: [String], array2: [String], array3: [String]) {
        super.init(playerName: playerName, array1: array1, array2: array2, array3: array3)
    }
    
    override func startGame(){
    
        let name1: String = playerName
        print("Добро пожаловать в игру крестики нолики: \(name1) у Вас знак \"Х\"")
    let name2 = "Бот"
        print("С вами играет бот в роли второго игрока со знаком \"0\"")
    var sign: String = "X"
    var replacing: Bool = true
    var playoff: Bool = false
    var flag: Bool = true
    
    while true {
        
        if replacing {
            playerName = name1
            sign = "X"
            replacing = false
            flag = true
            print("Введите координаты игрока по столбцу: \(playerName)")
            let column = readLine()!
            print("Введите координаты игрока по строке: \(playerName)")
            let row = readLine()!
       
        if column == "1" && row == "1" && array1[0] != "X" && array1[0] != "0" {
              array1[0] = sign
        } else
        if column == "2" && row == "1" && array1[1] != "X" && array1[1] != "0"  {
            array1[1] = sign
        } else
        if column == "3" && row == "1" && array1[2] != "X" && array1[2] != "0"{
            array1[2] = sign
        } else
        //-------------------------------
        if column == "1" && row == "2" && array2[0] != "X" && array2[0] != "0" {
            array2[0] = sign
        } else
        if column == "2" && row == "2" && array2[1] != "X" && array2[1] != "0"{
            array2[1] = sign
        } else
        if column == "3" && row == "2" && array2[2] != "X" && array2[2] != "0" {
            array2[2] = sign
        } else
        //-------------------------------
        if column == "1" && row == "3" && array3[0] != "X" && array3[0] != "0" {
            array3[0] = sign
        } else
        if column == "2" && row == "3" && array3[1] != "X" && array3[1] != "0" {
            array3[1] = sign
        } else
        if column == "3" && row == "3" && array3[2] != "X" && array3[2] != "0" {
            array3[2] = sign
        }
            
        } else
        {
            print(" Ход бота со знаком \"0\"")
            while flag
            {
                playerName = name2
                sign = "0"
                replacing = true
                let column = Int.random(in: 1...3)
                let row = Int.random(in: 1...3)
                if column == 1 && row == 1 && array1[0] != "X" && array1[0] != "0" {
                    array1[0] = sign
                    flag = false
                } else
                if column == 2 && row == 1 && array1[1] != "X" && array1[1] != "0"  {
                    array1[1] = sign
                    flag = false
                } else
                if column == 3 && row == 1 && array1[2] != "X" && array1[2] != "0"{
                    array1[2] = sign
                    flag = false
                } else
                //-------------------------------
                if column == 1 && row == 2 && array2[0] != "X" && array2[0] != "0" {
                    array2[0] = sign
                    flag = false
                } else
                if column == 2 && row == 2 && array2[1] != "X" && array2[1] != "0"{
                    array2[1] = sign
                    flag = false
                } else
                if column == 3 && row == 2 && array2[2] != "X" && array2[2] != "0" {
                    array2[2] = sign
                    flag = false
                } else
                //-------------------------------
                if column == 1 && row == 3 && array3[0] != "X" && array3[0] != "0" {
                    array3[0] = sign
                    flag = false
                } else
                if column == 2 && row == 3 && array3[1] != "X" && array3[1] != "0" {
                    array3[1] = sign
                    flag = false
                } else
                if column == 3 && row == 3 && array3[2] != "X" && array3[2] != "0" {
                    array3[2] = sign
                    flag = false
                }
            }
            print(array1)
            print(array2)
            print(array3)
        }
        var i: Int = 0
        var j: Int = 0
        var k: Int = 0
        var w: Int = 0
        var t: Int = 0
        var y: Int = 0
        //---------------------- array1-------
        for (index, value) in array1.enumerated()
        {
           if value == "X" {
                        i += 1
                    } else
            if value == "0" {
                j += 1
            }
        }
        //------------------------------array2-------
        for (index, value) in array2.enumerated()
        {
           if value == "X" {
                        k += 1
                    } else
            if value == "0" {
                w += 1
            }
        }
        //--------------------------array3------
        for (index, value) in array3.enumerated()
        {
           if value == "X" {
                        t += 1
                    } else
            if value == "0" {
                y += 1
            }
        }
        var u:Int = 0
        var o:Int = 0
        var s:Int = 0
        var d:Int = 0
        var f:Int = 0
        var g:Int = 0
        
        for item in 0...2 {
            if array1[item] == "X" && array2[item] == "X" && array3[item] == "X" {
                u += 1
            } else if array1[item] == "0" && array2[item] == "0" && array3[item] == "0" {
                o += 1
            }
            }
            if array1[0] == "X" && array2[1] == "X" && array3[2] == "X" {
                s += 1
            } else
            if array1[0] == "0" && array2[1] == "0" && array3[2] == "0" {
                d += 1}
            //-----------------------
            if array1[2] == "X" && array2[1] == "X" && array3[0] == "X" {
                f += 1
            } else
            if array1[2] == "0" && array2[1] == "0" && array3[0] == "0" {
                g += 1}
    
    if i == 3 || j == 3 || k == 3 || w == 3 || t==3 || y == 3 {playoff = true}
    if u == 1 || o == 1 {playoff = true}
    if s == 1 || d == 1 || f == 1 || g == 1  {playoff = true}
        if playoff == true && playerName == name1 {
            print(array1)
            print(array2)
            print(array3)
        }
        if playoff { endGame()
            break
        }
            }
        }
    
    override func endGame() {
        print("Игра окончена: выиграл \(playerName)")
            
    }
}
