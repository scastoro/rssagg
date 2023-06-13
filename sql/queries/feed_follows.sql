-- name: CreateFeedFollow :one
INSERT INTO feed_follows (id, created_at, updated_at, user_id, feed_id)
values($1, $2, $3, $4, $5)
RETURNING *;

-- name: GetFeedFollows :many
select * from feed_follows where user_id=$1;

-- name: DeleteFeedFollow :exec
DELETE FROM feed_follows WHERE id = $1 and user_id = $2;