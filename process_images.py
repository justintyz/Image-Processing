from PIL import Image
import os

images_folder = 'images'
edited_images_folder = 'images_edited'
os.makedirs(edited_images_folder, exist_ok=True)

for filename in os.listdir(images_folder):
   im =  Image.open(os.path.join(images_folder, filename))
   im_rotated = im.rotate(270)
   im_resized = im_rotated.resize((128, 128))
   if im_resized.mode in ['P', 'LA']:
      im_resized = im_resized.convert('RGB')
   new_imagefile = im_resized.save(fp=os.path.join(edited_images_folder, filename + '_edited'), format='JPEG')
