/*
 *   Copyright 2014 David Edmundson <davidedmundson@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.0

ListView {
    id: view
    readonly property string selectedUser: currentItem.userName
    property int userItemWidth: 140
    property int userItemHeight: 140
    property int userFaceSize: 88
    property int padding: 4

    orientation: ListView.Horizontal
    highlightRangeMode: ListView.StrictlyEnforceRange

    delegate: UserDelegate {
        name: (model.realName === "") ? model.name : model.realName
        userName: model.name
        iconSource: model.icon ? model.icon : "user-identity"
        width: view.userItemWidth
        height: view.userItemHeight
        faceSize: view.userFaceSize
        padding: view.padding

        onClicked: {
            view.currentIndex = index;
            view.forceActiveFocus();
        }
    }
}
