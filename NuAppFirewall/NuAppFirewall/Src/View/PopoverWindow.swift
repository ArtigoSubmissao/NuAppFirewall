//
//  PopoverWindow.swift
//  NuAppFirewall
//
//  Created by xxx on 20/01/25.
//

import SwiftUI

struct PopoverWindow: View {
    var body: some View {
        ZStack {
            Image(.backgroundNufuturo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.13)
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(.nubankLogo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                }
                .padding([.top], 5)
                
                Spacer()
                
                VStack(spacing: 10) {
                    Image(.iconFirewallPurple)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    
                    Image(.nuAppFirewallName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 33)
                }
                
                Spacer()
                
                Text("NuAppFirewall is a Firewall Application developed by xxx for Nubank!")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.primary)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .allowsTightening(true)
                    .minimumScaleFactor(0.5)
                    .padding([.horizontal, .bottom], 30)
            }
        }
        .frame(width: 280, height: 320)
    }
}

struct PopoverWindows_Previews: PreviewProvider {
    static var previews: some View {
        PopoverWindow()
    }
}
