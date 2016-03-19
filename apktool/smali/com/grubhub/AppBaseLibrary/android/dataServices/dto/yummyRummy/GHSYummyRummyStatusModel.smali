.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyStatusModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyStatusModel;


# instance fields
.field private status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayYummyRummy()Z
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyStatusModel;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
