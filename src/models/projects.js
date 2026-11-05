
import db from './db.js'

//Get all service projects along with their organization names.
async function getAllProjects() {
    const sql = `
        SELECT
            sp.service_project_id,
            sp.organization_id,
            sp.title,
            sp.description,
            sp.location,
            sp.project_date,
            o.name AS organization_name
        FROM public.service_project AS sp
        JOIN public.organization AS o
            ON sp.organization_id = o.organization_id
        ORDER BY sp.project_date;
    `

    const result = await db.query(sql)

    return result.rows
}

export { getAllProjects }
