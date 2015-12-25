function reply_comment(comment_id) {
    $('.reply-comment').addClass('hidden');
    $('.reply-comment-' + comment_id).removeClass('hidden');
}