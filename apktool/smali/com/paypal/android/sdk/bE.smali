.class public final Lcom/paypal/android/sdk/bE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/paypal/android/sdk/cg;

.field private b:Ljava/lang/String;

.field private c:Lcom/paypal/android/sdk/cq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/cp;

    invoke-direct {v0}, Lcom/paypal/android/sdk/cp;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/bE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/paypal/android/sdk/cg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cg;

    iput-object v0, p0, Lcom/paypal/android/sdk/bE;->a:Lcom/paypal/android/sdk/cg;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bE;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cq;

    iput-object v0, p0, Lcom/paypal/android/sdk/bE;->c:Lcom/paypal/android/sdk/cq;

    return-void
.end method


# virtual methods
.method public final a()Lcom/paypal/android/sdk/cg;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bE;->a:Lcom/paypal/android/sdk/cg;

    return-object v0
.end method

.method public final a(Lcom/paypal/android/sdk/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bE;->a:Lcom/paypal/android/sdk/cg;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bE;->c:Lcom/paypal/android/sdk/cq;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/bE;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bE;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/paypal/android/sdk/cq;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bE;->c:Lcom/paypal/android/sdk/cq;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bE;->a:Lcom/paypal/android/sdk/cg;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bE;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/bE;->c:Lcom/paypal/android/sdk/cq;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
