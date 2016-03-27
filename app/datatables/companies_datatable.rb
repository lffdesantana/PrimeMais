class CompaniesDatatable
  delegate :params, :h, :link_to, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Company.count,
      iTotalDisplayRecords: companies.total_entries,
      aaData: data
    }
  end

private

  def data
    companies.map do |company|
      [
        link_to(company.id, company),
        company.name,
        company.cnpj,
        company.phone,
        company.total_strategy,
        company.used_strategy,
        company.total_consultation,
        company.used_consultation,
        company.dt_last_consultation
        #h(company.released_on.strftime("%B %e, %Y")),
        #number_to_currency(product.price)
      ]
    end
  end

  def companies
    @companies ||= fetch_companies
  end

  def fetch_companies
    companies = Company.order("#{sort_column} #{sort_direction}")
    companies = companies.page(page).per_page(per_page)
    if params[:sSearch].present?
      companies = companies.where("name like :search or cnpj like :search", search: "%#{params[:sSearch]}%")
    end
    companies
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[id name cnpj phone total_strategy used_strategy total_consultation used_consultation dt_last_consultation]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

