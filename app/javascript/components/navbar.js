const scroll = () => {
  const navbar = document.querySelector("header");
  document.addEventListener('scroll', (event) => {
    navbar.style.backgroundColor = "rgba(0,0,0,0.4)";
  });
};


export { scroll };
