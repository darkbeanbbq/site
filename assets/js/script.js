var mainEl = document.getElementsByTagName("main"),
    headingsEls = mainEl[0].getElementsByTagName("h2"),
    asideEl = document.getElementsByTagName("aside"),
    ulEl = document.createElement("ul")

  for(var i = 0; i < headingsEls.length; i++){
    var liEl = document.createElement("li")
    liEl.textContent = headingsEls[i].textContent
    ulEl.appendChild(liEl)
  }

  asideEl[0].appendChild(ulEl)
