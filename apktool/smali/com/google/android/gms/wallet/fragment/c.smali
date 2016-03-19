.class Lcom/google/android/gms/wallet/fragment/c;
.super Lcom/google/android/gms/d/dg;


# instance fields
.field private a:Lcom/google/android/gms/wallet/fragment/b;

.field private final b:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/dg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/c;->b:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    return-void
.end method


# virtual methods
.method public a(IILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/c;->a:Lcom/google/android/gms/wallet/fragment/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/c;->a:Lcom/google/android/gms/wallet/fragment/b;

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/c;->b:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/b;->a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
