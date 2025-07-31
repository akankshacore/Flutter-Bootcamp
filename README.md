# Day 2 – Flutter Bootcamp: Multi-Screen Navigation App 🚀

This is a basic Flutter application built during Day 2 of my Flutter Bootcamp. The app demonstrates **multi-screen navigation** using **named routes**, and includes a simple **bottom navigation bar** using the `google_nav_bar` package.

## 📱 Features

- Three screens:
  - **HomePage**
  - **SecondScreen**
  - **MyBuffer**
- Navigation using **named routes**
- A button on each screen that takes you to the next screen
- A bottom navigation bar (GNav) with icons and labels

## 📁 File Structure

```

lib/
├── main.dart         # Sets up routing and app entry point
├── buffer.dart       # MyBuffer screen (third screen)
├── medoc.dart        # SecondScreen (second screen)
├── third.dart        # Contains MyBuffer widget

```

## 🛠️ Packages Used

- [`google_nav_bar`](https://pub.dev/packages/google_nav_bar): For the bottom navigation bar

## 🚀 How to Run

1. Make sure Flutter is installed on your machine.
2. Clone this repository:
```

git clone [https://github.com/your-username/Flutter-Bootcamp.git](https://github.com/your-username/Flutter-Bootcamp.git)

```
3. Navigate into the project directory:
```

cd Flutter-Bootcamp

```
4. Run the app:
```

flutter run

```

## 📚 Learnings

- How to use **MaterialApp**, **Scaffold**, and basic **widgets**
- How to set up **routes** and navigate between screens
- How to integrate and use **custom packages** like `google_nav_bar`
