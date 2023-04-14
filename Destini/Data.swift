//
//  Data.swift
//  Destini
//
//  Created by sidzhe on 11.04.2023.
//

import UIKit

struct StoryModel {
    
    var title: String
    var choice1: String
    var choice2: String
    var choice1Destination: Int
    var choice2Destination: Int
    
}

struct StoryStruct {
    
    var numberOfStory = 0
    
    let story = [
        StoryModel(
            title: "У вашего автомобиля лопнула шина на извилистой дороге в глуши, где нет сотовой связи. Вы решаете поехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Человек в широкополой шляпе с бездушными глазами открывает перед вами пассажирскую дверь и спрашивает: «Подвезти, мальчик?».",
            choice1: "Я прыгну. Спасибо за помощь!", choice2: "Лучше сначала спросите его, убийца ли он.", choice1Destination: 2, choice2Destination: 1),
        
        StoryModel(
            title: "Он медленно кивает, не обращая внимания на вопрос.",
            choice1: "По крайней мере, он честный. Я залезу.", choice2: "Подождите, я знаю, как поменять шину.", choice1Destination: 2, choice2Destination: 3),
        
        StoryModel(
            title: "Когда вы садитесь за руль, незнакомец начинает рассказывать о своих отношениях с матерью. Он становится все злее и злее с каждой минутой. Он просит вас открыть бардачок. Внутри вы найдете окровавленный нож, два отрубленных пальца и кассету с записью Элтона Джона. Он тянется к бардачку.",
            choice1: "Я люблю Элтона Джона! Дайте ему кассету.", choice2: "Либо он, либо я! Вы берете нож и наносите ему удары.", choice1Destination: 5, choice2Destination: 4),
        
        StoryModel(
            title: "Что? Такой полицейский! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев для большинства взрослых возрастных групп?",
            choice1: "Ко", choice2: "нец", choice1Destination: 0, choice2Destination: 0),
        
        StoryModel(
            title: "Когда вы разбиваете ограждение и кренитесь к зазубренным камням внизу, вы размышляете о сомнительной мудрости нанесения удара ножом кому-то, когда он ведет машину, в которой вы находитесь.",
            choice1: "Ко", choice2: "нец", choice1Destination: 0, choice2Destination: 0),
        
        StoryModel(
            title: "Вы сближаетесь с убийцей, напевая стихи «Чувствуете ли вы любовь сегодня вечером?». Он высаживает вас в следующем городе. Прежде чем вы уйдете, он спрашивает вас, знаете ли вы какие-нибудь хорошие места, где можно сбросить тела. Вы отвечаете: «Попробуйте на пирсе».",
            choice1: "Ко", choice2: "Нец", choice1Destination: 0, choice2Destination: 0)
    ]
    
    mutating func checkAnswer(answer: String) {
        if answer == story[numberOfStory].choice1 {
            numberOfStory = story[numberOfStory].choice1Destination
        } else {
            numberOfStory = story[numberOfStory].choice2Destination
        }
    }
}
