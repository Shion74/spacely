CREATE POLICY \
Users
can
add
amenities
to
their
own
posts\ ON post_amenities FOR INSERT WITH CHECK (EXISTS (SELECT 1 FROM posts WHERE posts.post_id = post_amenities.post_id AND posts.user_id = auth.uid()));
