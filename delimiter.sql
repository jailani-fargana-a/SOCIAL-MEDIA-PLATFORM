BEGIN
    DECLARE v_user_id INT;
    SELECT user_id INTO v_user_id FROM posts WHERE post_id = NEW.post_id;
    IF v_user_id IS NOT NULL THEN
        INSERT INTO notifications (user_id, notification_type, related_item, related_item_id)
        VALUES (v_user_id, 'Commented on your post!!!', 'Post', NEW.post_id);
    END IF;
END
BEGIN
    INSERT INTO notifications (user_id, notification_type, related_item, related_item_id)
    VALUES (NEW.receiver_id, 'New Message!!!', 'Message', NEW.message_id);
END
BEGIN
    IF NEW.tagged_user_id IS NOT NULL AND NEW.tagged_user_id != NEW.user_id THEN
        INSERT INTO Notifications (user_id, notification_type,related_item, related_item_id)
        VALUES (NEW.tagged_user_id, 'Tagged in Post','Post', NEW.post_id);
    END IF;
END
BEGIN
    DECLARE v_user_id INT;
    SELECT user_id INTO v_user_id FROM posts WHERE post_id = NEW.post_id;
    IF v_user_id IS NOT NULL THEN
        INSERT INTO notifications (user_id, notification_type, related_item, related_item_id)
        VALUES (v_user_id, 'Liked on your post!!!', 'Post', NEW.post_id);
    END IF;
END
