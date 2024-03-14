//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by Jia Jang on 3/14/24.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1) 
                        // 메모 내용을 한 줄만 표시하고 넘어가면 ... 표시
                    
                    Text(memo.insertDate, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

#Preview {
    MainListView()
        .environmentObject(MemoStore())
}
