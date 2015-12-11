

class AvatarUploader < CarrierWave::Uploader::Base


  if Rails.env.production?
    include Cloudinary::CarrierWave
  end


  storage :file if Rails.env.development?


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  
end
