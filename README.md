# Delphi - Premium Offline-First Study App

Delphi is a high-performance, privacy-first study application built with **Flutter**, **Riverpod**, and **Atomic Design**. It features local persistence, high-end "Senior UI/UX" design patterns, and offline-first orchestration.

## 🚀 Quick Start

1. **Prerequisites**: Ensure Flutter is installed and an emulator is running.
2. **Dependencies**:
   ```bash
   flutter pub get
   ```
3. **Run App**:
   ```bash
   flutter run
   ```

## 📚 Documentation

- **[Architecture Overview](MOBILE_ARCHITECTURE.md)**: Details on the Clean Architecture and Atomic Design folder structure.
- **[Design System (UI/UX)](DESIGN_SYSTEM.md)**: The "Source of Truth" for design tokens, typography, and premium components.
- **[Latest Walkthrough](walkthrough.md)**: Summary of recent premium UI/UX features.

## ✨ Key Features

- **Premium UI**: Frosted glass navigation, geometric typography (Plus Jakarta Sans), and staggered micro-animations.
- **Atomic Design**: 100% modular component library (Atoms, Molecules, Templates).
- **State Management**: Robust logic using Riverpod.
- **Offline-First**: Planned local storage via SQLite.

## 📁 Project Structure

- `lib/shared`: Cross-cutting models, providers, and routing.
- `lib/ui/atoms`: Basic UI components (Buttons, Inputs).
- `lib/ui/molecules`: Complex components (Topic Cards, Form Items).
- `lib/ui/screens`: High-level feature pages and tabs.
- `lib/ui/templates`: Layout structures (Auth wrappers).
