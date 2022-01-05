(function(){
    let i = 1, interval = 100;
    let num = document.getElementById("noc")
    let f = parseInt(num.textContent)
    let id = setInterval(timer, interval)
      function timer(){
        num.textContent = i
        if (i == f) {
          clearInterval(id); }
        i++;
        interval += 100; 
      }; })();

      (function(){
        let i = 1, interval = 100;
        let num = document.getElementById("nob")
        let f = parseInt(num.textContent)
        let id = setInterval(timer, interval)
          function timer(){
            num.textContent = i
            if (i == f) {
              clearInterval(id); }
            i++;
            interval += 100; 
          }; })();