.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 40
    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 48
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->b:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50
    :cond_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 57
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;->b:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 59
    :cond_0
    return-void
.end method
