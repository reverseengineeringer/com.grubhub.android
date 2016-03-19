package io.card.payment;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;

class CardNumberValidator
  implements Validator
{
  static final int[] AMEX_SPACER = { 4, 11 };
  static final int[] NORMAL_SPACER = { 4, 9, 14 };
  private String numberString;
  private int spacerToDelete = 0;
  
  public CardNumberValidator() {}
  
  public CardNumberValidator(String paramString)
  {
    numberString = paramString;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    int j = 0;
    numberString = StringHelper.getDigitsOnlyString(paramEditable.toString());
    CardType localCardType = CardType.fromCardNumber(numberString);
    int i = j;
    int k;
    if (spacerToDelete > 1)
    {
      k = spacerToDelete;
      int m = spacerToDelete - 1;
      spacerToDelete = 0;
      i = j;
      if (k > m)
      {
        paramEditable.delete(m, k);
        i = j;
      }
    }
    if (i < paramEditable.length())
    {
      k = paramEditable.charAt(i);
      if (((localCardType.numberLength() == 15) && ((i == 4) || (i == 11))) || (((localCardType.numberLength() == 16) || (localCardType.numberLength() == 14)) && ((i == 4) || (i == 9) || (i == 14))))
      {
        j = i;
        if (k != 32)
        {
          paramEditable.insert(i, " ");
          j = i;
        }
      }
      for (;;)
      {
        i = j + 1;
        break;
        j = i;
        if (k == 32)
        {
          paramEditable.delete(i, i + 1);
          j = i - 1;
        }
      }
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    Object localObject = StringHelper.getDigitsOnlyString(new SpannableStringBuilder(paramSpanned).replace(paramInt3, paramInt4, paramCharSequence, paramInt1, paramInt2).toString());
    paramInt1 = CardType.fromCardNumber((String)localObject).numberLength();
    if (((String)localObject).length() > paramInt1) {
      return "";
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramCharSequence);
    if (paramInt1 == 15) {}
    for (localObject = AMEX_SPACER;; localObject = NORMAL_SPACER)
    {
      int i = paramInt4 - paramInt3;
      paramInt1 = 0;
      while (paramInt1 < localObject.length)
      {
        if ((paramCharSequence.length() == 0) && (paramInt3 == localObject[paramInt1]) && (paramSpanned.charAt(paramInt3) == ' ')) {
          spacerToDelete = localObject[paramInt1];
        }
        paramInt4 = paramInt2;
        if (paramInt3 - i <= localObject[paramInt1])
        {
          paramInt4 = paramInt2;
          if (paramInt3 + paramInt2 - i >= localObject[paramInt1])
          {
            int j = localObject[paramInt1] - paramInt3;
            if (j != paramInt2)
            {
              paramInt4 = paramInt2;
              if (j >= 0)
              {
                paramInt4 = paramInt2;
                if (j < paramInt2)
                {
                  paramInt4 = paramInt2;
                  if (localSpannableStringBuilder.charAt(j) == ' ') {}
                }
              }
            }
            else
            {
              localSpannableStringBuilder.insert(j, " ");
              paramInt4 = paramInt2 + 1;
            }
          }
        }
        paramInt1 += 1;
        paramInt2 = paramInt4;
      }
    }
    return localSpannableStringBuilder;
  }
  
  public String getValue()
  {
    return numberString;
  }
  
  public boolean hasFullLength()
  {
    if (TextUtils.isEmpty(numberString)) {}
    CardType localCardType;
    do
    {
      return false;
      localCardType = CardType.fromCardNumber(numberString);
    } while (numberString.length() != localCardType.numberLength());
    return true;
  }
  
  public boolean isValid()
  {
    if (!hasFullLength()) {}
    while (!CreditCardNumber.passesLuhnChecksum(numberString)) {
      return false;
    }
    return true;
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     io.card.payment.CardNumberValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */