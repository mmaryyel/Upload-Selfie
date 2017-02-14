class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick
    storage :file
  # Que tipo de strorage usará este uploader

  def store_dir
    # Como y donde guardar el archivo ...
    'public/img'
  end

  storage :file
  # Versiones del archivo ...
  
  version :thumb do
  process resize_to_fill: [200,200]
  end
  #Que extensiones vas a aceptar
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end