.class public Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/i;


# instance fields
.field final a:I

.field public final b:Landroid/accounts/Account;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/i;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(Landroid/accounts/Account;ZZZ)V

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->a:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->b:Landroid/accounts/Account;

    iput-boolean p3, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ZZZ)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(ILandroid/accounts/Account;ZZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/i;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/i;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/i;->a(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Landroid/os/Parcel;I)V

    return-void
.end method
