.class public Lcom/braintreepayments/api/models/PayPalAccount;
.super Lcom/braintreepayments/api/models/PaymentMethod;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/braintreepayments/api/models/PayPalAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consentCode"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlationId"
    .end annotation
.end field

.field private g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field private h:Lcom/braintreepayments/api/models/PostalAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/braintreepayments/api/models/PayPalAccount$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PayPalAccount$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/PayPalAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PaymentMethod;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PaymentMethod;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->e:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->f:Ljava/lang/String;

    .line 118
    const-class v0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->a:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->b:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/m;

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->c:Lcom/braintreepayments/api/models/m;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->d:Ljava/lang/String;

    .line 123
    const-class v0, Lcom/braintreepayments/api/models/PostalAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PostalAddress;

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->h:Lcom/braintreepayments/api/models/PostalAddress;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/PayPalAccount$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccount;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/braintreepayments/api/models/PayPalAccount;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PayPalAccount;

    .line 90
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "details"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "payerInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "accountAddress"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/braintreepayments/api/models/PostalAddress;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braintreepayments/api/models/PostalAddress;

    iput-object v1, v0, Lcom/braintreepayments/api/models/PayPalAccount;->h:Lcom/braintreepayments/api/models/PostalAddress;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "PayPal"

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    .line 35
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    invoke-static {v0, p1}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a(Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    invoke-static {v0}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a(Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccount;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/braintreepayments/api/models/PaymentMethod;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayPal"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalAccount;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalAccount;->b()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/braintreepayments/api/models/PaymentMethod;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccount;->f:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->g:Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->c:Lcom/braintreepayments/api/models/m;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 111
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount;->h:Lcom/braintreepayments/api/models/PostalAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
