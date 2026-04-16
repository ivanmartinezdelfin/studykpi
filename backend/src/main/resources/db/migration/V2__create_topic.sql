create table study_session (
    id bigserial primary key,
    topic_id biginit not null references topic(id) on delete cascade,
    session_date date not null,
    started_at timestamp not null,
    ended_at timestamp not null,
    duration_minutes intefer not null check (duration_minutes > 0)
);

create index idx_study_session_date on study_session(session_date);
create index idx_stud_session_topic on study_session(topic_id);