// Generated by CoffeeScript 1.9.1
(function() {
  ({
    fibonacci: function() {
      var element, i, int_limit, len, num;
      int_limit = window.prompt("How many fibonacci numbers do you want to generate?              ");
      element = [0, 1];
      for (i = 0, len = element.length; i < len; i++) {
        num = element[i];
        element.push(element[element.length - 1] + element[element.length - 2]);
      }
      return alert(element);
    }
  });

  end;

  fibonacci();

}).call(this);

//# sourceMappingURL=fibonacci.js.map
