Image Restoration Using Very Deep Convolutional Encoder-Decoder Networks with Symmetric Skip Connections
=====================================================================

- This is the testing code for the papers:

  [Image Restoration Using Very Deep Convolutional Encoder-Decoder Networks with Symmetric Skip Connections,
    Annual Conference on Neural Information Processing Systems (NIPS), 2016](http://papers.nips.cc/paper/6172-image-restoration-using-very-deep-convolutional-encoder-decoder-networks-with-symmetric-skip-connections.pdf), and

  [Image Restoration Using Convolutional Auto-encoders with Symmetric Skip Connections, arXiv, 2016](https://arxiv.org/abs/1606.08921)


- [Download this repository](https://bitbucket.org/chhshen/image-denoising/get/241d4256cd0e.zip)

  For any question, please send email to xjmgl.nju@gmail.com
  or, chhshen@gmail.com


- If you use this code in your research, please cite our papers:

```
 @InProceedings{NIPS2016Mao,
   author    = "Xiao{-}Jiao Mao and Chunhua Shen and Yu{-}Bin Yang",
   title     = "Image Restoration Using Very Deep Convolutional Encoder-Decoder Networks with Symmetric Skip Connections",
   booktitle = "Proc. Advances in Neural Inf. Process. Syst.",
   year      = "2016",
 }
```

```
  @Article{MaoSY16a,
    author    = "Xiao{-}Jiao Mao and Chunhua Shen and Yu{-}Bin Yang",
    title     = "Image Restoration Using Convolutional Auto-encoders with Symmetric Skip Connections",
    journal   = "arXiv preprint",
    volume    = "abs/1606.08921",
    year      = "2016",
    url       = "http://arxiv.org/abs/1606.08921",
    timestamp = "Fri, 01 Jul 2016 17:39:49 +0200",
    biburl    = "http://dblp.uni-trier.de/rec/bib/journals/corr/MaoSY16a",
 }
```





## Install

Caffe is required for running this code. For convenience, it is included in the folder `Caffe` and pre-compiled in Ubuntu 14.04.

The folder `model` contains the network definition in `.prototxt` and the trained weights in `.caffemodel` for different tasks.

The folder `utils` contains the functions used for image restoration.

The file `demo_denoising.m` shows that how to use the code for image denoising.

The file `demo_super_resolution.m` shows that how to use the code for image super-resolution.

The file `demo_jpeg_deblocking.m` shows that how to use the code for JPEG-deblocking.

The file `demo_debluring.m` shows that how to use the code for non-blind image debluring.

The file `demo_inpainting.m` shows an example for scratch removal.

Kindly note that the ``input_dim" of the network should be adapted to datasets.



## Copyright

Copyright (c) Xiao-Jiao Mao, Chunhua Shen, Yu-Bin Yang. 2016.

** This code is for non-commercial purposes only. For commerical purposes,
please contact Xiao-Jiao Mao <xjmgl.nju@gmail.com> and Chunhua Shen <chhshen@gmail.com> **

This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.


