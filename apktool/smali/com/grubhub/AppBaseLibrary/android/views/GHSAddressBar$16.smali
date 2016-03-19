.class Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    .prologue
    .line 218
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;Lcom/grubhub/AppBaseLibrary/android/order/g;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 220
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/c;->a()V

    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c()V

    .line 223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/views/b;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar$16;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/grubhub/AppBaseLibrary/android/views/b;->a(DDLcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method
