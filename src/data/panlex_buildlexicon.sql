select *
  from denotationx as engd
  join (
    select *
      from langvar
      where uid == 'eng-000'
  ) as eng on engd.langvar == eng.id
  join (
    select *
      from denotationx as d
      join (
        select *
          from expr as e
          join (
            select *
              from langvar
              where uid == 'mic-000'
          ) as l on l.id == e.langvar
      ) as ex on ex.id == d.expr
  ) as micd on micd.meaning == engd.meaning;
