//
//  UIKitButton.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

// MARK: - UIKitButtonSize

protocol UIKitButtonSize {
    var height: CGFloat { get }
    var imageSize: CGSize { get }
    var horizontalContentInset: CGFloat { get }
}

// MARK: - UIKitButtonAppearence

protocol UIKitButtonAppearence {
    var font: Font { get }
    var weight: Font.Weight { get }
    var foregroundColor: Color { get }
    var backgroundColor: Color { get }

}

// MARK: - UIKitButtonType

protocol UIKitButtonType {
    var `default`: UIKitButtonAppearence { get }
    var enabled: UIKitButtonAppearence { get }
    var pressed: UIKitButtonAppearence { get }
    var disabled: UIKitButtonAppearence { get }
}

// MARK: - UIKitButtonImage

struct UIKitButtonImage {
    var imageName: String // FIXME - Replace String with component
    var alignment: Alignment
    
    enum Alignment {
        case leading
        case trailing
    }
}

// MARK: - UIKitButtonState

enum UIKitButtonState {
    case `default`
    case enabled
    case pressed
    case disabled
}

// MARK: - UIKitButton

struct UIKitButton: View {
    private let title: String
    private let isExpanded: Bool
    private let image: UIKitButtonImage?
    private let size: UIKitButtonSize
    private let type: UIKitButtonType
    private let state: UIKitButtonState
    private let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            content
        }
        .disabled(state == .disabled)
        .buttonStyle(
            UIKitButtonStyle(
                state: state,
                appearence: stateConfiguration,
                isExpanded: isExpanded,
                type: type,
                size: size
            )
        )
    }
    
    init(
        title: String,
        isExpanded: Bool,
        image: UIKitButtonImage? = nil,
        size: UIKitButtonSize = .medium,
        type: UIKitButtonType = .primary,
        state: UIKitButtonState = .default,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.isExpanded = isExpanded
        self.image = image
        self.size = size
        self.type = type
        self.state = state
        self.action = action
    }
}

// MARK: - Content

private extension UIKitButton {
    
    var content: some View {
        HStack(spacing: 8) {
            if image?.alignment == .leading {
                imageContent
            }
            
            text
            
            if image?.alignment == .trailing {
                imageContent
            }
        }
        .padding(size.horizontalContentInset)
    }
}

// MARK: - State configuration

private extension UIKitButton {
    
    var stateConfiguration: UIKitButtonAppearence {
        switch state {
        case .default: type.default
        case .enabled: type.enabled
        case .pressed: type.pressed
        case .disabled: type.disabled
        }
    }
}

// MARK: - Text

private extension UIKitButton {
    
    var text: some View {
        Text(title)
            .font(stateConfiguration.font.customWeight(stateConfiguration.weight))
    }
}

// MARK: - Image Content

private extension UIKitButton {
    
    @ViewBuilder /// нужен для того чтобы переварить опционал
    var imageContent: some View {
        if let image {
            Image(systemName: image.imageName)
                .frame(
                    width: size.imageSize.width,
                    height: size.imageSize.height
                )
        }
    }
}

// MARK: - Button style

private extension UIKitButton {
    
    struct UIKitButtonStyle: ButtonStyle {
        
        private let state: UIKitButtonState
        private let appearence: UIKitButtonAppearence
        private let isExpanded: Bool
        private let type: UIKitButtonType
        private let size: UIKitButtonSize
        
        init(
            state: UIKitButtonState,
            appearence: UIKitButtonAppearence,
            isExpanded: Bool,
            type: UIKitButtonType,
            size: UIKitButtonSize
        ) {
            self.state = state
            self.appearence = appearence
            self.isExpanded = isExpanded
            self.type = type
            self.size = size
        }
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .disabled(state == .disabled)
                .if(isExpanded) { label in
                    label.frame(maxWidth: .infinity)
                }
                .frame(height: size.height)
                .foregroundStyle(
                    configuration.isPressed 
                    ? type.pressed.foregroundColor
                    : appearence.foregroundColor
                )
                .background(
                    configuration.isPressed
                    ? type.pressed.backgroundColor
                    : appearence.backgroundColor
                )
                .cornerRadius(6)
        }
    }
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

// MARK: - #Preview

#Preview {
    ZStack {
        /// Test backround
        Color.blue.opacity(0.5)
            .ignoresSafeArea()
        ///
        
        VStack {
            UIKitButton(
                title: "Конфигурация №1",
                isExpanded: false,
                size: .large,
                type: .primary,
                state: .disabled
            ) {
                print("Hello cofig 1")
            }
            .padding()
            
            
            UIKitButton(
                title: "Конфиг #2",
                isExpanded: false,
                image: UIKitButtonImage(imageName: "eraser.fill", alignment: .trailing),
                size: .medium
            ) {
                print("Hello cofig 2")
            }
            .padding()
            
            UIKitButton(
                title: "Конфиг #3",
                isExpanded: false,
                image: UIKitButtonImage(
                    imageName: "eraser.fill",
                    alignment: .leading
                ),
                size: .small
            ) {
                print("Hello cofig 3")
            }
            .padding()
            
        }
        //.preferredColorScheme(.dark)
    }
}
