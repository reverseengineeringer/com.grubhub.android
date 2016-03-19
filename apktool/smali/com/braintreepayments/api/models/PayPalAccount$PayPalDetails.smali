.class Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;
.super Ljava/lang/Object;
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
            "Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails$1;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails$1;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/braintreepayments/api/models/PayPalAccount$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/braintreepayments/api/models/PayPalAccount$PayPalDetails;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
