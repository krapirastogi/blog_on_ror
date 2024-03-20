const deleteCommentLinks = document.querySelectorAll(".delete-comment-link");
console.log("heyy");
console.log(deleteCommentLinks);
deleteCommentLinks.forEach((link) => {
  link.addEventListener("click", function (event) {
    event.preventDefault();
    const commentId = event.target.getAttribute("data-comment-id");
    const url = this.getAttribute("href");
    console.log(commentId);
    console.log(url);
    console.log(commentId);
    $.ajax({
      url: url,
      type: "DELETE",
      success: function (response) {
        console.log(response);
        const commentElement = $("#comment-"+commentId);
        console.log(commentElement);

        commentElement.hide();
      },
      error: function (xhr, status, error) {
        console.error(error);
      },
    });
  });
});
