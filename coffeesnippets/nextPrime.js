// Generated by CoffeeScript 1.9.1
(function() {
  ({
    nextPrime: function(current_prime) {
      var i, items, mult, prime, ref;
      prime = current_prime;
      while (true) {
        while (true) {
          mult = [];
          prime++;
          for (items = i = 1, ref = prime + 1; 1 <= ref ? i <= ref : i >= ref; items = 1 <= ref ? ++i : --i) {
            if (prime % items === 0) {
              mult.push(items);
            }
          }
          if (mult.length <= 2) {
            return prime;
          }
        }
      }
    }
  });

  nextPrime();

}).call(this);

//# sourceMappingURL=nextPrime.js.map