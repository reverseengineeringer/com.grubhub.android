.class final Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;-><init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/AndroidPayCard$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;
    .locals 1

    .prologue
    .line 104
    new-array v0, p1, [Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails$1;->a(Landroid/os/Parcel;)Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails$1;->a(I)[Lcom/braintreepayments/api/models/AndroidPayCard$AndroidPayCardDetails;

    move-result-object v0

    return-object v0
.end method
