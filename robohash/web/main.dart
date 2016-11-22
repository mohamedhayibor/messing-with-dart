// Copyright (c) 2016, Mohamed Hayibor. All rights reserved. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

import 'dart:html';

// imput element
InputElement queryText;
ImageElement robotImg;

void main() {
  // setup queryText and robotImg
  queryText = querySelector("#query");
  robotImg = querySelector("#result");

  // event listener
  queryText.onKeyUp.listen(fetchImg);
  fetchImg(null);
}

void fetchImg(Event e) {
  String searchQuery = queryText.value;
  robotImg.src = "https://robohash.org/${searchQuery}.png?size=200x200";
}
