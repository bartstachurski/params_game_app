class Api::NameController < ApplicationController

  def name_in_caps

    render 'name_in_caps.json.jb'
  end
end
