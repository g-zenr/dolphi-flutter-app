# Delphi Design System (UI/UX)

This document defines the design language and tokens for the Delphi mobile application to ensure a premium, consistent "Senior-level" experience across all screens.

## 🎨 Color Palette

| Name | Hex / Code | Usage |
| --- | --- | --- |
| **Primary (Mint Green)** | `0xFF40B876` | Main brand color, buttons, active states, progress indicators. |
| **Background (Off-White)**| `0xFFF9FAFC` | Global scaffold background. |
| **Surface (White)** | `0xFFFFFFFF` | Cards, input fields, navigation bars. |
| **Text (Primary)** | `0xFF1A1A1A` | Headings and primary body text. |
| **Text (Secondary)** | `0xFF757575` | Subtitles, hints, and metadata. |
| **Error** | `Colors.red.shade400` | Error messages, destructive actions (Sign Out). |

---

## 🔡 Typography

**Font Family**: `Plus Jakarta Sans` (Geometric Sans-Serif)

| Level | Size | Weight | Usage |
| --- | --- | --- | --- |
| **H1 / Title** | 28px | Bold | Auth headings, splash screen titles. |
| **H2 / Header** | 24px | Bold | Dashboard tab titles, section headers. |
| **H3 / Card Title** | 18px | Bold | Topic titles, major card labels. |
| **Body (Large)** | 16px | Medium | Primary descriptions, input text. |
| **Body (Normal)** | 15px | Regular | Secondary descriptions, list titles. |
| **Metadata** | 13px | Regular | Subtitles inside cards, dates, counts. |

---

## 📏 Layout & Spacing

- **Standard Horizontal Padding**: `24.0` (Global consistency for all screens).
- **Standard Vertical Padding**: `10.0 - 16.0`.
- **Bottom Navigation Safe Zone**: `120.0` (Bottom padding for scrollable content to clear the floating nav bar).
- **Grid Spacing**: Use increments of `8px` (8, 16, 24, 32).

---

## ✨ Elevation & Shadows

We avoid heavy material shadows. Instead, we use **diffused, low-alpha shadows** for a premium look.

- **Standard Card Shadow**:
  - Color: `Colors.black.withValues(alpha: 0.03)`
  - Blur Radius: `10.0`
  - Offset: `Offset(0, 4)`
- **Interactive Shadow (Hover/Active)**:
  - Color: `PrimaryColor.withValues(alpha: 0.2)`
  - Blur Radius: `15.0`
  - Offset: `Offset(0, 8)`

---

## 📐 Shapes & Radii

- **Cards / Sections**: `24px` rounded corners.
- **Buttons / Inputs**: Pill-shaped (`BorderRadius.circular(100)` or `StadiumBorder`).
- **Small Components**: `12px - 16px` (Icon containers, chips).

---

## 🖱️ Interactive Cards

To maintain a premium feel, cards should never be "flat" during interaction.

- **Ripple Feedback**: Use `Material` -> `InkWell` inside the card container.
- **Radius Constraint**: The `InkWell` must share the same `BorderRadius` as the parent card (typically `24px`) to prevent the ripple from "bleeding" out of the corners.
- **Action Indicators**: Use `Icons.chevron_right_rounded` or `Icons.arrow_forward_ios` on the far right of clickable cards to signify navigation.

---

## 🎬 Animations

We use `flutter_animate` for a "living" UI feel.

- **Staggered Entry**: Stagger list items by `100ms`.
- **Effect**: `.fade(duration: 400.ms).slideY(begin: 0.1, curve: Curves.easeOutQuad)`.
- **Interaction**: Button scales should be subtle (`begin: 1.0, end: 0.95` on tap).

---

## 🧱 Component Principles (Atomic Design)

1. **Shrink**: Use pill shapes to make elements feel compact and approachable.
2. **Hide**: Keep metadata (counts, dates) subtle in grey unless interacted with.
3. **Embody**: Use icons and soft color backgrounds to represent categories visually.
4. **Feedback**: Always use `InkWell` for taps to provide Material ripple feedback constrained to the component's shape.
