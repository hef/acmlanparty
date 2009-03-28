class Page < Post
  has_permalink :title, :update => true
  def to_param
    permalink
  end
end
