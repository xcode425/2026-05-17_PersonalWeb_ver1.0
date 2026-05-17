---
name: Modern Curated Minimalist
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f3'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1a1c1c'
  on-surface-variant: '#444748'
  inverse-surface: '#2f3131'
  inverse-on-surface: '#f1f1f1'
  outline: '#747878'
  outline-variant: '#c4c7c7'
  surface-tint: '#5f5e5e'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#1c1b1b'
  on-primary-container: '#858383'
  inverse-primary: '#c8c6c5'
  secondary: '#276954'
  on-secondary: '#ffffff'
  secondary-container: '#aaeed2'
  on-secondary-container: '#2c6e58'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#40000c'
  on-tertiary-container: '#fc2a54'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e5e2e1'
  primary-fixed-dim: '#c8c6c5'
  on-primary-fixed: '#1c1b1b'
  on-primary-fixed-variant: '#474646'
  secondary-fixed: '#adf0d5'
  secondary-fixed-dim: '#92d4b9'
  on-secondary-fixed: '#002117'
  on-secondary-fixed-variant: '#02513d'
  tertiary-fixed: '#ffdada'
  tertiary-fixed-dim: '#ffb3b6'
  on-tertiary-fixed: '#40000c'
  on-tertiary-fixed-variant: '#920027'
  background: '#f9f9f9'
  on-background: '#1a1c1c'
  surface-variant: '#e2e2e2'
typography:
  display:
    fontFamily: Hanken Grotesk
    fontSize: 64px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Hanken Grotesk
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Hanken Grotesk
    fontSize: 24px
    fontWeight: '500'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-technical:
    fontFamily: JetBrains Mono
    fontSize: 13px
    fontWeight: '400'
    lineHeight: '1.5'
    letterSpacing: 0.05em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 12px
  md: 24px
  lg: 48px
  xl: 80px
  container-max: 1200px
  gutter: 24px
---

## Brand & Style

The design system is defined by an architectural precision that balances stark minimalism with technical intimacy. It evokes a sense of curated intentionality, aimed at a professional audience that values clarity, modernism, and the beauty of structural form. 

The aesthetic style is **Neo-Minimalist**. It utilizes heavy whitespace as a functional element rather than just a void, creating a gallery-like atmosphere for content. By combining a rigid, grid-based structure with a monochromatic base and high-frequency technical accents, the design system achieves a look that is both sophisticated and approachable. The emotional response is one of calm, focus, and trust in the underlying craftsmanship.

## Colors

This design system employs a monochromatic foundation to maintain a high-end, editorial feel. The palette is dominated by a near-white background and near-black typography, ensuring maximum legibility and a timeless aesthetic.

- **Primary & Neutral:** Used for the core UI structure, typography, and primary actions. The slight off-white background reduces eye strain compared to pure white.
- **Accents:** Secondary (Deep Green) and Tertiary (Vibrant Pink) are used sparingly for interactive cues, status indicators, or to draw attention to specific focus areas without overwhelming the minimalist harmony.
- **Surface:** The light gray neutral is used for subtle containment, distinguishing secondary content areas from the primary background.

## Typography

The typography strategy relies on the interplay between a clean, contemporary Neo-Grotesk and a precise Monospace.

- **Primary Sans-Serif:** Used for all core messaging and body copy. It provides a neutral yet modern tone that mimics the Swiss-design tradition.
- **Technical Mono:** Used for metadata, labels, and small UI annotations. This adds a "work-in-progress" or "technical specification" layer to the design, humanizing the minimalism with a sense of process.
- **Scale:** Large display sizes are used for impact, while body text maintains generous line-height to ensure readability within the grid.

## Layout & Spacing

The layout is built on a **Strict Fixed Grid** system that centers content within a maximum width, creating consistent vertical margins on wider viewports. 

A 12-column grid is used for desktop layouts, while spacing rhythm follows a strict 8px baseline. Large "rhythmic gaps" (xl spacing) are used to separate major content sections, emphasizing the importance of whitespace in the minimalist narrative. Elements should align strictly to the grid edges, avoiding centered text blocks in favor of left-aligned compositions that reinforce the structured, architectural feel.

## Elevation & Depth

This design system avoids traditional shadows and heavy 3D effects. Depth is communicated through **Low-contrast outlines** and **Tonal layering**.

- **Outlines:** Elements like cards or input fields use thin (1px) borders in the neutral or primary color at low opacity.
- **Layers:** Depth is achieved by placing elements on top of `#F4F4F4` surface blocks. There is no concept of "z-axis height" in the traditional Material sense; instead, depth is "flat," achieved through contrast and clear containment lines.
- **Interactions:** Subtle background color shifts (e.g., from `#FCFCFC` to `#F4F4F4`) signify hover states rather than lifting the element off the page.

## Shapes

The shape language is primarily **Soft-Square**. While the overall impression should be crisp and professional, a very subtle radius is applied to UI components to prevent the design from feeling overly sharp or aggressive.

Small components like buttons and tags use the base `rounded` (4px) setting. Larger containers or cards may use `rounded-lg` (8px) to soften the layout. Icons should follow a similar language—clean lines with slight corner rounding to match the typography.

## Components

- **Buttons:** Primary buttons are solid blocks of `#111111` with white text. Secondary buttons use an outlined style with 1px borders. Both use `label-technical` typography for a unique, modern feel.
- **Chips & Tags:** Small, monochromatic containers using `#F4F4F4` backgrounds and `label-technical` text. They are used for categorization without adding visual noise.
- **Input Fields:** Minimalist design featuring a 1px bottom border that transforms into a full outline on focus. Labels are always positioned above the field in technical monospace.
- **Cards:** Flat containers with either a subtle `#F4F4F4` fill or a thin neutral border. They should never have shadows.
- **Navigation:** Top-aligned, leveraging simple text links with a bold weight change or a subtle underline to indicate the active state.
- **Grid Lists:** Content lists should follow the 12-column grid, often featuring a vertical line (rule) between columns to reinforce the structural layout.