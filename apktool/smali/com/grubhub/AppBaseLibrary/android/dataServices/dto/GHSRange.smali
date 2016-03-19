.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRange;


# instance fields
.field private highValue:I

.field private lowValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;->lowValue:I

    .line 14
    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;->highValue:I

    .line 15
    return-void
.end method


# virtual methods
.method public getHighIntValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;->highValue:I

    return v0
.end method

.method public getLowIntValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRange;->lowValue:I

    return v0
.end method
