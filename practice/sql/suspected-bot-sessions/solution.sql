select session_id, user_id, session_duration_sec from user_sessions where year(cast(session_start as timestamp)) = 2026 and session_duration_sec < 100
