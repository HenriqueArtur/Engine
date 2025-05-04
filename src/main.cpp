#include <SFML/Graphics.hpp>
#include <fmt/core.h>

int main() {
  sf::RenderWindow window(sf::VideoMode(800, 600), "Engine");

  sf::RectangleShape rectangle(sf::Vector2f(200.f, 100.f));
  rectangle.setFillColor(sf::Color::White);
  rectangle.setPosition((window.getSize().x - rectangle.getSize().x) / 2,
                        (window.getSize().y - rectangle.getSize().y) / 2);

  while (window.isOpen()) {
    sf::Event event;
    while (window.pollEvent(event)) {
      if (event.type == sf::Event::Closed)
        window.close();
    }

    window.clear(sf::Color::Black);
    window.draw(rectangle);
    window.display();
  }

  return 0;
}
