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
        print("Введите имя игрока: X")
    var name1 = readLine()!
        print("С вами играет бот в роли второго игрока: 0")
    var name2 = "Бот"
    var playername: String = name1
    var sign: String = "X"
    var replacing: Bool = true
    var playoff: Bool = false
    
    while true {
        if replacing {
            playername = name1
            sign = "X"
            replacing = false
            print("Введите координаты игрока по столбцу: \(playername)")
            var column = readLine()!
            print("Введите координаты игрока по строке: \(playername)")
            var row = readLine()!
       
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
        {playername = name2
            sign = "0"
            replacing = true
            let random1 = Int.random(in: 0...2)
            let random2 = Int.random(in: 0...2)
            //
            var column = String(random1)
            var row = String(random2)
            
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
        
        print(array1)
        print(array2)
        print(array3)
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
    if playoff {
        print("Игра окончена: выиграл \(playername)")
//    print(" Выиграл \(playername) i= \(i), j= \(j), k= \(k), w= \(w), t= \(t), y= \(y), (u + s + f) = \(u) \(s) \(f), (o + d + g)=\(o) \(d) \(g)")
            break
    }
            }
        }
    
    }
    override func endGame() {
        
    }
}
