.class final Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;-><init>(Landroid/os/Parcel;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption$1;->createFromParcel(Landroid/os/Parcel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;
    .locals 1

    .prologue
    .line 204
    new-array v0, p1, [Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption$1;->newArray(I)[Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderLineDTO$V2OrderLineOption;

    move-result-object v0

    return-object v0
.end method
