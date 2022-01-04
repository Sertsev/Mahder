(function(){
    let i = 1
    let num = document.getElementById("noc")
    let f = parseInt(num.textContent)
    let id = setInterval(timer, 500)
      function timer(){
        num.textContent = i
        if (i == f) {
          clearInterval(id); }
        i++;
      }; })();

      (function(){
        let i = 1
        let num = document.getElementById("nob")
        let f = parseInt(num.textContent)
        let id = setInterval(timer, 500)
          function timer(){
            num.textContent = i
            if (i == f) {
              clearInterval(id); }
            i++;
          }; })();