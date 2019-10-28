
import argparse

parser = argparse.ArgumentParser()
sys.argv = []
parser.add_argument('-cuda', type=int, default=1)
parser.add_argument('-model', default='pre-weights/e2e-mlt.h5')
parser.add_argument('-segm_thresh', default=0.5)

font2 = ImageFont.truetype("Arial-Unicode-Regular.ttf", 18)

args = parser.parse_args()

from collections import namedtuple

params = namedtuple('parameters', 
                        'encoder, '
                        'height, width, '
                        'batch_size, '
                        'num_threads, '
                        'num_epochs, '
                        'do_stereo, '
                        'wrap_mode, '
                        'use_deconv, '
                        'alpha_image_loss, '
                        'disp_gradient_loss_weight, '
                        'lr_loss_weight, '
                        'full_summary')

opts = params(
      encoder=args.encoder,
      height=args.input_height,
      width=args.input_width,
      batch_size=args.batch_size,
      num_threads=args.num_threads,
      num_epochs=args.num_epochs,
      do_stereo=args.do_stereo,
      wrap_mode=args.wrap_mode,
      use_deconv=args.use_deconv,
      alpha_image_loss=args.alpha_image_loss,
      disp_gradient_loss_weight=args.disp_gradient_loss_weight,
      lr_loss_weight=args.lr_loss_weight,
      full_summary=args.full_summary)
        
