module Sections
  class SearchEmpty < SitePrism::Section
    element  :alert, '.alert-warning'
    element  :results_listing, '.heading-counter'
  end
end