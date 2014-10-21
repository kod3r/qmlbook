/*
 * Copyright (c) 2013, Juergen Bocklage-Ryannel, Johan Thelin
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the editors nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

// M1>>
import QtQuick 2.0

Rectangle {
    width: 140
    height: 300
    
    color: "white"

    ListView {
        id: lv1
        
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 20
        width: 40
        
        clip: true
        
        model: 100
        
        delegate: numberDelegate
        spacing: 5
    }
    
    Rectangle {
        anchors.fill: lv1
        
        border.color: "red"
        border.width: 1
        
        color: "transparent"
    }

    ListView {
        id: lv2
        
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 20
        width: 40
        
        model: 100
        
        delegate: numberDelegate
        spacing: 5
    }

    Rectangle {
        anchors.fill: lv2
        
        border.color: "red"
        border.width: 1
        
        color: "transparent"
    }

    Component {
        id: numberDelegate
     
        Rectangle {
            width: 40
            height: 40
            
            color: "lightGreen"
            
            Text {
                anchors.centerIn: parent
                
                font.pixelSize: 10
                
                text: index
            }
        }
    }
    
    Component.onCompleted: {
        lv1.contentY = 15;
        lv2.contentY = 15;
    }
}
// <<M1