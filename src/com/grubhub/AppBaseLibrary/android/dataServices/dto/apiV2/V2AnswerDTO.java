package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;

public class V2AnswerDTO
{
  public final String answer_id;
  public final String question_id;
  public final Boolean skipped;
  public final String value;
  
  public V2AnswerDTO(GHSCreateOrderReviewDataModel.GHSAnswerDataModel paramGHSAnswerDataModel)
  {
    if (paramGHSAnswerDataModel != null)
    {
      question_id = paramGHSAnswerDataModel.getQuestionId();
      answer_id = paramGHSAnswerDataModel.getAnswerId();
      value = paramGHSAnswerDataModel.getValue();
      skipped = paramGHSAnswerDataModel.isSkipped();
      return;
    }
    question_id = null;
    answer_id = null;
    value = null;
    skipped = null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2AnswerDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */