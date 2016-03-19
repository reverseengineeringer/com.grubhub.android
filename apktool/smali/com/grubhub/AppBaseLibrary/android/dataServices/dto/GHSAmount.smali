.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAmount;


# instance fields
.field private amount:Ljava/lang/Integer;

.field private currency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->amount:Ljava/lang/Integer;

    .line 14
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->currency:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->amount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->amount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->currency:Ljava/lang/String;

    return-object v0
.end method
