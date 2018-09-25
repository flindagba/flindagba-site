class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:accueil, :domaines_expertise, :contact, :mentions_legales]

  def accueil
  end

  def domaines_expertise
  end

  def contact
  end
end
