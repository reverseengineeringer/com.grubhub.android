.class Lcom/flurry/sdk/hf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hf;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/hf;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/flurry/sdk/hf$a;->a:Lcom/flurry/sdk/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/flurry/sdk/hf$a;->a:Lcom/flurry/sdk/hf;

    invoke-static {v0, p1}, Lcom/flurry/sdk/hf;->a(Lcom/flurry/sdk/hf;Landroid/location/Location;)Landroid/location/Location;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hf$a;->a:Lcom/flurry/sdk/hf;

    invoke-static {v0}, Lcom/flurry/sdk/hf;->c(Lcom/flurry/sdk/hf;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 279
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/hf;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Max location reports reached, stopping"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/hf$a;->a:Lcom/flurry/sdk/hf;

    invoke-static {v0}, Lcom/flurry/sdk/hf;->b(Lcom/flurry/sdk/hf;)V

    .line 282
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
