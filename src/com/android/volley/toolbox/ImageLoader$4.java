package com.android.volley.toolbox;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

class ImageLoader$4
  implements Runnable
{
  ImageLoader$4(ImageLoader paramImageLoader) {}
  
  public void run()
  {
    Iterator localIterator1 = ImageLoader.access$400(this$0).values().iterator();
    while (localIterator1.hasNext())
    {
      ImageLoader.BatchedImageRequest localBatchedImageRequest = (ImageLoader.BatchedImageRequest)localIterator1.next();
      Iterator localIterator2 = ImageLoader.BatchedImageRequest.access$500(localBatchedImageRequest).iterator();
      while (localIterator2.hasNext())
      {
        ImageLoader.ImageContainer localImageContainer = (ImageLoader.ImageContainer)localIterator2.next();
        if (ImageLoader.ImageContainer.access$600(localImageContainer) != null) {
          if (localBatchedImageRequest.getError() == null)
          {
            ImageLoader.ImageContainer.access$702(localImageContainer, ImageLoader.BatchedImageRequest.access$200(localBatchedImageRequest));
            ImageLoader.ImageContainer.access$600(localImageContainer).onResponse(localImageContainer, false);
          }
          else
          {
            ImageLoader.ImageContainer.access$600(localImageContainer).onErrorResponse(localBatchedImageRequest.getError());
          }
        }
      }
    }
    ImageLoader.access$400(this$0).clear();
    ImageLoader.access$802(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.ImageLoader.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */