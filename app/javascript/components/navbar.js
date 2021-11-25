const scroll = () => {
  const navbar = document.querySelector(".header");
  if (navbar) {
    document.addEventListener('scroll', (event) => {
      navbar.style.backgroundColor = "rgba(244, 244, 244)";
    });
  };
};


export { scroll };
